//
//  EnumDefinitions.swift
//  ManifestReport
//
//  Copyright © 2019 Rob King. All rights reserved.
//

import Foundation

typealias EnumLookup = [String: ApiDefinition]
typealias EnumValues = (Int, String)

extension ApiDefinition {
    func values() -> EnumValues {
        switch self {
            case {{range .Enums}}.{{.Name}}(let val, let name),
            {{end}}:
            return (val, name)
        }
    }
}

let enumReferences: [String: EnumLookup] = [{{range .EnumRefs}}
    "{{.From}}": {{.To}}_Lookup,{{end}}
]

enum ApiDefinition {
    // (Raw Value, User Friendly Identifier)
{{range .Enums}}    case {{.Name}}(Int, String)
{{end}}
}
{{range .Enums}}{{$name := .Name}}
let {{$name}}_Lookup: EnumLookup = [
{{range .Values}}   "{{.RawValue}}": .{{$name}}({{.RawValue}}, "{{.Identifier}}"),
{{end -}}
]
{{end}}
