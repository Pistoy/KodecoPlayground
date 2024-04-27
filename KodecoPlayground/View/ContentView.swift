//
//  ContentView.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 25.04.2024.
//

import SwiftUI

struct ContentView: View {
    var game = Game()
    @State private var sliderValue = 50.0
    @State private var isVisible = false
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            VStack {
                Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                Text(String(game.target))
                Slider(value: $sliderValue, in: 1.0...100.0, step: 1) { }
            minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("100")
            }
                HStack {
                    VStack {
                        Text("SCORE")
                        Text("MY SCORE")
                    }
                    Button("HIT ME") {
                        print(game.calcPoint(sliderValue))
                        print(sliderValue)
                    }
                    .padding(20.0)
                    .background {
                        Color(.blue)
                    }
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    VStack {
                        Text("ROUND")
                        Text("ROUND?")
                    }
                }
            }
            .kerning(2.0)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
