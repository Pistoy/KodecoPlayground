//
//  ContentView.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 25.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var game = Game()
    @State private var sliderValue = 50.0
    @State private var isVisible = false
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionView(game: $game)
                    .padding(.bottom, isVisible ? 300 : 100)
                if !isVisible {
                    HitMeButton(isAlertVisible: $isVisible, sliderValue: $sliderValue, game: $game)
                }
            }
            .padding()
            if !isVisible {
                SliderView(sliderValue: $sliderValue)
                    .transition(.scale)
            }
        }
        .overlay(content: {
            if isVisible {
                PointsView(isAlertVisible: $isVisible, sliderValue: $sliderValue, game: $game)
                    .transition(.scale)
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
