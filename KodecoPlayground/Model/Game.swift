//
//  Game.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 26.04.2024.
//

import Foundation

struct Game {
    
    var score: Int = 0
    var round: Int = 1
    var target = Int.random(in: 1...100)
    var leaderboardEntries: [LeaderboardEntry] = [
        LeaderboardEntry(score: 1, date: Date()),
        LeaderboardEntry(score: 49, date: Date()),
        LeaderboardEntry(score: 19, date: Date()),
        LeaderboardEntry(score: 99, date: Date()),
        LeaderboardEntry(score: 100, date: Date()),
    ]
    
    func calcPoint(_ sliderValue: Double) -> Int {
        let difference = abs(Int(sliderValue) - target)
        return 100 - difference
    }
    
    mutating func newRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}

struct LeaderboardEntry {
    let score: Int
    let date: Date
}
