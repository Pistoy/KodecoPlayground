//
//  ButtonViews.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 27.04.2024.
//

import SwiftUI

struct HitMeButton: View {
    @Binding var isAlertVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    var body: some View {
        Button {
            withAnimation {
                isAlertVisible = true
            }
            game.newRound(points: game.calcPoint(sliderValue))
        } label: {
            HitMeButtonText(text: "HIT ME")
        }
    }
}

struct Test: View {
    @State private var value = false
    var body: some View {
        HitMeButton(isAlertVisible: $value, sliderValue: .constant(50), game: .constant(Game()))
    }
}

struct MyPreviewProvider_PreviewsASD: PreviewProvider {
    static var previews: some View {
        VStack {
            
        }
    }
}
