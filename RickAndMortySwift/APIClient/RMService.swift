//
//  RMClient.swift
//  RickAndMortySwift
//
//  Created by Piero Jhoann Acevedo Pichen on 22/06/23.
//

import Foundation

///Primary API Service object to get Rick and Morty data
final class RMService {
    ///Shared singleton instance
    static let sharde = RMService()
    
    /// Privatized constructor
    private init() {
        
    }
    
    ///Send Rick and Morty API call:
    ///- Parameters:
    ///     - request: Request instance
    ///     - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
