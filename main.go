package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"os"
	"strconv"
	"strings"
	"text/template"
)

var (
	// schemaBlacklist is a list of schema definitions that should be omitted, these will never be shown in the app.
	schemaBlacklist = map[string]bool{"Exceptions.PlatformErrorCodes": true}
)

//*** Input Types ***//

type SwaggerDefinition struct {
	Components *ComponentsDefinition `json:"components"`
}

type ComponentsDefinition struct {
	Schemas map[string]*SchemaEntry `json:"schemas"`
}

type SchemaEntry struct {
	Enum   []string `json:"enum"`
	Type   string   `json:"type"`
	Format string   `json:"format"`

	// Enum types
	EnumValues []*EnumValue `json:"x-enum-values"`

	// Object types
	Properties map[string]*Property
}

type Property struct {
	Type        string     `json:"type"`
	Description string     `json:"description"`
	Format      string     `json:"format"`
	EnumRef     *Reference `json:"x-enum-reference"`
}

func (p *Property) isEnumReference() bool {
	return p.EnumRef != nil
}

type Reference struct {
	Ref string `json:"$ref"`
}

func (r *Reference) cleanupRef() string {
	if !strings.HasPrefix(r.Ref, "#/components/schemas/") {
		panic("Tryingt to cleanup reference that doesn't have a #/components/schemas/ prefix")
	}

	return strings.Replace(r.Ref, "#/components/schemas/", "", 1)
}

type EnumValue struct {
	NumericValue string `json:"numericValue"`
	Identifier   string `json:"identifier"`
}

//***  Output Types ***//

type SwiftResult struct {
	Enums    []EnumResult
	EnumRefs []EnumReference
}

type EnumResult struct {
	Name   string
	Values []EnumResultValue
}

type EnumResultValue struct {
	RawValue   int64
	Identifier string
}

type EnumReference struct {
	From string
	To   string
}

func main() {

	inPath := flag.String("in-path", "", "The path to the Bungie.net API Swagger spec")
	flag.Parse()

	if *inPath == "" {
		fmt.Println("Forgot to specify an in-path to the Swagger spec")
		flag.Usage()
		return
	}

	f, err := os.Open(*inPath)
	if err != nil {
		fmt.Println("Failed to open the file at the specified path")
		return
	}

	swaggerDef := &SwaggerDefinition{}
	decoder := json.NewDecoder(f)
	err = decoder.Decode(swaggerDef)
	if err != nil {
		fmt.Printf("Error trying to decode the Swagger definition: %s\n", err.Error())
		return
	}

	result, err := transformSwaggerDefinitions(swaggerDef)
	if err != nil {
		fmt.Printf("Error trying to transform Swagger definition to Swift: %s\n", err.Error())
		return
	}

	err = writeSwiftResult(result)
	if err != nil {
		fmt.Printf("Failed to write out Swift result: %s\n", err.Error())
		return
	}

	fmt.Printf("Finished with %d enums and %d enum references\n", len(result.Enums), len(result.EnumRefs))

	fmt.Println("Success")
}

func transformSwaggerDefinitions(def *SwaggerDefinition) (*SwiftResult, error) {

	result := &SwiftResult{
		Enums:    make([]EnumResult, 0, 150),
		EnumRefs: make([]EnumReference, 0, 150),
	}
	for name, schema := range def.Components.Schemas {
		if val, _ := schemaBlacklist[name]; val {
			continue
		}
		if schema.isEnum() {

			fmt.Printf("Found enum with name %s and type %s\n", name, schema.Type)

			if schema.Type != "integer" && schema.Format != "int32" {
				fmt.Printf("Found enum without integer spec : type=%s and format=%s\n", schema.Type, schema.Format)
			}
			values := make([]EnumResultValue, 0, len(schema.EnumValues))
			for _, v := range schema.EnumValues {
				values = append(values, EnumResultValue{RawValue: v.raw(), Identifier: v.Identifier})
			}
			result.Enums = append(result.Enums, EnumResult{Name: safeName(name), Values: values})
		} else if schema.isObject() {

			for propName, property := range schema.Properties {
				if property.isEnumReference() {
					if val, _ := schemaBlacklist[property.EnumRef.cleanupRef()]; val {
						continue
					}
					ref := EnumReference{From: fmt.Sprintf("%s_%s", safeName(name), safeName(propName)), To: safeName(property.EnumRef.cleanupRef())}
					result.EnumRefs = append(result.EnumRefs, ref)
					fmt.Printf("Found top-level enum reference %s_%s -> %s\n", name, propName, property.EnumRef.cleanupRef())
				}
			}
		}

		//fmt.Printf("Processing name: %s with data %+v\n", name, *schema)
	}

	//fmt.Printf("There were %d enums found\n", enumCount)
	return result, nil
}

func (v *EnumValue) raw() int64 {
	raw, err := strconv.ParseInt(v.NumericValue, 10, 32)
	if err != nil {
		panic(fmt.Sprintf("Could not convert %s to a raw value", v.NumericValue))
	}

	return raw
}

func safeName(name string) string {
	return strings.ReplaceAll(name, ".", "_")
}

func writeSwiftResult(result *SwiftResult) error {
	tmpl, err := template.New("EnumDefinitions").ParseFiles("EnumDefinitions.tpl.swift")
	if err != nil {
		return err
	}

	f, err := os.OpenFile("EnumDefinitions.swift", os.O_WRONLY|os.O_CREATE|os.O_TRUNC, 0644)
	if err != nil {
		return err
	}

	err = tmpl.ExecuteTemplate(f, "EnumDefinitions.tpl.swift", result)
	return err
}

func (e *SchemaEntry) isObject() bool {
	return e.Type == "object"
}

func (e *SchemaEntry) isEnum() bool {
	return e.Enum != nil
}
