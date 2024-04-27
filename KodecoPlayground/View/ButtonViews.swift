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
            print(game.calcPoint(sliderValue))
        } label: {
            HitMeButtonText(text: "HIT ME")
        }

    }
}


