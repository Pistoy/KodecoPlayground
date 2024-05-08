//
//  TextViews.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 27.04.2024.
//

import SwiftUI

struct InstructionText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .kerning(2)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .padding(.horizontal, 2.0)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .kerning(-1)
            .multilineTextAlignment(.center)
            .font(.largeTitle)
    }
}

struct SliderLabelTexts: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

struct HitMeButtonText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .padding(20.0)
            .background {
                ZStack {
                    Color("ButtonColor")
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]),
                        startPoint: .top,
                        endPoint: .bottom)
                }
            }
            .foregroundColor(Color("TextColor"))
            .cornerRadius(21.0)
            .font(.title3)
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.body)
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(2)
    }
}

struct BodyText: View {
    var text: String
    var body: some View {
        Text(text)
            .lineSpacing(5)
            .multilineTextAlignment(.center)
    }
}

struct AlertButtonText: View {
    var body: some View {
        Text("Start New Round")
            .padding()
            .foregroundColor(Color.white)
            .bold()
            .frame(width: 250)
            .background(Color.red)
            .cornerRadius(21)
    }
}

struct ScoreText: View {
    var text: String
    var body: some View {
        Text(text)
            .frame(width: Constants.LeaderBoard.scoreColumnWidth)
    }
}

struct DateText: View {
    var date: Date
    var body: some View {
        Text(date, style: .time)
            .frame(width: Constants.LeaderBoard.dateColumnWidth)
    }
}

struct BigBoldText: View {
    var text: String
    var body: some View {
        Text(text)
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .fontWeight(.black)
    }
}

struct Text_Previews: PreviewProvider {
    static var previews: some View {
        LabelText(text: "ANNEN")
    }
}
