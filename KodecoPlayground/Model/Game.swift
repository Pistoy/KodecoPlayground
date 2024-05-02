//
//  Game.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 26.04.2024.
//

import Foundation

struct Game {
    
    var score: Int = 999
    var round: Int = 99
    var target = Int.random(in: 1...100)
    
    func calcPoint(_ sliderValue: Double) -> Int {
        let difference = abs(Int(sliderValue) - target)
        return 100 - difference
    }
}
