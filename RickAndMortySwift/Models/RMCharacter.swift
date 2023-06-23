//
//  RMCharacter.swift
//  RickAndMortySwift
//
//  Created by Piero Jhoann Acevedo Pichen on 22/06/23.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMLocation
    let episode: [String]
    let image: String
    let url: String
    let created: String
}
