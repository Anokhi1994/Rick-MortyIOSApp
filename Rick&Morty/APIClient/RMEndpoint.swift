//
//  RMEndPoint.swift
//  Rick&Morty
//
//  Created by Anokhi Shah on 27.03.23.
//

import Foundation

/// represents unique api endpoints
@frozen enum RMEndpoint: String {
    /// get character info
    case character // "character"
    /// get location info
    case location
    /// get episode info
    case episode
}
