//
//  MappedDefinitions.swift
//  ManifestReport
//
//  Copyright © 2019 Rob King. All rights reserved.
//

import Foundation


enum MappedDefinition {
    case Table(String)
}

extension MappedDefinition {

    func reference(hash: Int64) -> ManifestRef {
        switch self {
        case .Table(let t):
            return ManifestRef(hash: hash, tableName: t)
        }
    }
}

let mappedDefinitions: [String: MappedDefinition] = [{{range .MappedDefinitions}}
    "{{.From}}": .Table("{{.To}}"),{{end}}
]