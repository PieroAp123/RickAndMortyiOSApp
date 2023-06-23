//
//  RMEndpoint.swift
//  RickAndMortySwift
//
//  Created by Piero Jhoann Acevedo Pichen on 23/06/23.
//

import Foundation

/// Represents unique API Endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character // "character"
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case epidose
}
