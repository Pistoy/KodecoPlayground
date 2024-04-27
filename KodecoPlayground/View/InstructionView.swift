//
//  InstructionView.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 27.04.2024.
//

import SwiftUI

struct InstructionView: View {
    @Binding var game: Game
    var body: some View {
        InstructionText(text: "PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        BigNumberText(text: String(game.target))
    }
}

