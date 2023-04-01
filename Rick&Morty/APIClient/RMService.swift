//
//  RMService.swift
//  Rick&Morty
//
//  Created by Anokhi Shah on 27.03.23.
//

import Foundation

/// Primary api service object to get rick and morty data
final class RMService {
    /// shared singleton instance
    static let shared = RMService()
    /// privatized constructor
    private init() {}
    
    /// send rock and morty api call
    ///  - Parameters
    ///     - request: request instance
    ///     - type : expect of type we expect to get back
    ///     - completion: callaback with data or error code
    public func execute<T: Codable>(_ request: RMRequest,
                                    expect type: T.Type,
                                    completion: @escaping (Result<T, Error>)->Void){
        
    }
    
}
