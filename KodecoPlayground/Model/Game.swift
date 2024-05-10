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
    var leaderboardEntries: [LeaderboardEntry] = []
    
    func calcPoint(_ sliderValue: Double) -> Int {
        let difference = abs(Int(sliderValue) - target)
        return 100 - difference
    }
    
    mutating func newRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
        leaderboardEntries.append(LeaderboardEntry(score: points, date: Date()))
        save()
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
    
    func save() {
        if let encoded = try? JSONEncoder().encode(leaderboardEntries) {
            UserDefaults.standard.set(encoded, forKey: "LeaderboardData")
        }
    }
    
    init() {
        if let data = UserDefaults.standard.data(forKey: "LeaderboardData") {
            if let decoded = try? JSONDecoder().decode([LeaderboardEntry].self, from: data) {
                leaderboardEntries = decoded
                return
            }
        }
        leaderboardEntries = []
    }
}

struct LeaderboardEntry: Identifiable, Codable {
    var id = UUID()
    
    let score: Int
    let date: Date
}
