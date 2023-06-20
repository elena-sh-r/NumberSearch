//
//  NumberGame.swift
//  NumberSearch
//
//  Created by Elena Sharipova on 20.06.2023.
//

import Foundation

struct NumberGame {
    var currentValue = Double.random(in: 0...100.0) // текущее значение слайдера
    var targetValue = Int.random(in: 0...100) // целевое значение
    
    var score: Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
}
