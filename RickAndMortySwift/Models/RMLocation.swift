//
//  RMLocation.swift
//  RickAndMortySwift
//
//  Created by Piero Jhoann Acevedo Pichen on 22/06/23.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
