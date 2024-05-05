//
//  BackgroundView.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 2.05.2024.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var game: Game
    
    var body: some View {
        VStack {
            TopView()
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background {
            RingsView()
        }
    }
}

struct TopView: View {
    var body: some View {
        HStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            Spacer()
            RoundedImageViewFilled(systemName: "list.bullet")
        }
    }
}

struct BottomView: View {
    @Binding var game: Game
    var body: some View {
        HStack {
            NumberView(title: "SCORE", text: String(game.score))
            Spacer()
            NumberView(title: "ROUND", text: String(game.round))
        }
    }
}

struct RingsView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            ForEach(1..<6) { ring in
                let size = CGFloat(ring * 100)
                Circle()
                    .stroke(lineWidth: 20)
                    .fill(
                        RadialGradient(colors: [Color.red.opacity(0.3 * 0.8), Color.blue], center: .center, startRadius: 5, endRadius: 500)
                    )
                    .frame(width: size, height: size)
            }
        }
    }
}

struct NumberView: View {
    
    var title: String
    var text: String
    
    var body: some View {
        VStack {
            VStack {
                LabelText(text: title)
                    .padding()
                RoundRectTextView(text: text)
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
