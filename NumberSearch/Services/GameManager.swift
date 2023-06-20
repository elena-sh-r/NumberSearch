//
//  GameManager.swift
//  NumberSearch
//
//  Created by Elena Sharipova on 20.06.2023.
//

import Combine

final class GameManager: ObservableObject {
    
    @Published var numberGame = NumberGame()
    
    func updateTargetValue() {
        numberGame.targetValue = Int.random(in: 0...100)
    }
}
