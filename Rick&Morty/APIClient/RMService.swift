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
    ///     - completion: callaback with data or error code
    public func execute(_ request: RMRequest, complettion: @escaping ()->Void){
        
    }
    
}
