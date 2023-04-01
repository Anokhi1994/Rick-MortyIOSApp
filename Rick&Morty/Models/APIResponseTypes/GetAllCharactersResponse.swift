//
//  GetAllCharactersResponse.swift
//  Rick&Morty
//
//  Created by Anokhi Shah on 01.04.23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
}
