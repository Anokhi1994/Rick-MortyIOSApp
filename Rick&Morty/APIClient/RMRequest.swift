//
//  RMRequest.swift
//  Rick&Morty
//
//  Created by Anokhi Shah on 27.03.23.
//

import Foundation

///object that represents single api call
final class RMRequest {
    // All the api constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api";
    }
    
    //Desired endpoint
    private let endpoint: RMEndpoint
    
    // Desired set of path components, if any
    private let pathComponents: Set<String>
    
    // Desired set of query componentns, if any
    private let queryParameters: [URLQueryItem]
    
    //constructed url request in string format
    private var urlString : String {
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
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
        string += argumentString
        }
        
        return string
    }
    
    // computed and constructed string in the form of url
    public var url : URL? {
        return URL(string: urlString)
    }
    
    // desired http method GET
    public let httpMethod = "GET"
    
    // constructor of RMRequest
    //  Parameters:
    //      - endpoint: desired endpoint
    //      - pathcomponents: set of pathcomponents
    //      - queryParameters: collection of query parameters
    public init(endpoint: RMEndpoint, pathComponents:
                Set<String> = [],
                queryParameters: [URLQueryItem] = []){
        self.endpoint = endpoint;
        self.pathComponents = pathComponents;
        self.queryParameters = queryParameters
    }
}
