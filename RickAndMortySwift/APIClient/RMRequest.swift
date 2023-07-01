//
//  RMRequest.swift
//  RickAndMortySwift
//
//  Created by Piero Jhoann Acevedo Pichen on 23/06/23.
//

import Foundation

final class RMRequest {
    ///Base URL
    ///Endpoint
    ///Path Components
    ///Query Parameters
    /// https://rickandmortyapi.com/api/character/2
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    
    private let pathComponents: [String]
    
    private let queryParameters: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return nil
    }
    
    public init(endpoint: RMEndpoint,
         pathComponents: [String],
         queryParameters: [URLQueryItem]
    ){
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
