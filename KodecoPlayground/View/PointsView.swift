//
//  PointsView.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 5.05.2024.
//

import SwiftUI

struct PointsView: View {
    @Binding var isAlertVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    var body: some View {
        VStack(spacing: 10) {
            InstructionText(text: "THE SLIDER'S VALUE IS")
            BigNumberText(text: String(Int(sliderValue.rounded())))
            BodyText(text: "your score is\n \(game.calcPoint(sliderValue.rounded()))")
            Button {
                withAnimation {
                    isAlertVisible = false
                }
            } label: {
                AlertButtonText()
            }

        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(21)
        .shadow(radius: 10, x: 5, y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    static private var isAlertVisible = Binding.constant(false)
    static private var sliderValue = Binding.constant(50.0)
    static private var game = Binding.constant(Game())
    static var previews: some View {
        PointsView(isAlertVisible: isAlertVisible, sliderValue: sliderValue, game: game)
    }
}
