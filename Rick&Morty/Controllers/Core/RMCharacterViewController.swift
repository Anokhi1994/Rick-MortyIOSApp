//
//  RMCharacterViewController.swift
//  Rick&Morty
//
//  Created by Anokhi Shah on 25.03.23.
//

import UIKit

/// controller to show and search for characters
final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url ?? "error")
        
        RMService.shared.execute(request, expect: RMCharacter.self){ result in
            }
            
        }
        
    }

