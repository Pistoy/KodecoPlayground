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
                SliderView(sliderValue: $sliderValue)
                HitMeButton(isAlertVisible: $isVisible, sliderValue: $sliderValue, game: $game)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
