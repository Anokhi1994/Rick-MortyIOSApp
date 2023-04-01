//
//  RMCharacter.swift
//  Rick&Morty
//
//  Created by Anokhi Shah on 25.03.23.
//

import Foundation

class RMCharacter : Codable {
          let id: Int
          let name: String
          let status: RMCharacterStatus
          let species: String
          let type: String
          let gender: RMCharacterGender
          let origin: RMOrigin
          let location: RMSingleLocation
          let image: String
          let episode: [String]
          let url: String
          let created: String
}
