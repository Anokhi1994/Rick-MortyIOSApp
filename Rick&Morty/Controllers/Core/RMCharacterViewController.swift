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
        
        RMService.shared.execute(.listCharacterRequests, expect: String.self){ result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
            
        }
    }
}

