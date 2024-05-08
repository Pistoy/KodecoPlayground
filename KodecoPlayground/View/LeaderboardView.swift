//
//  LeaderboardView.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 8.05.2024.
//

import SwiftUI

struct LeaderboardView: View {
    @Binding var leaderboardIsShowing: Bool
    @Binding var game: Game
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack(spacing: 10) {
                HeaderView(leaderboardIsShowing: $leaderboardIsShowing)
                LabelView()
                ScrollView {
                    ForEach(game.leaderboardEntries.indices, id: \.self) { index in
                        let leaderBoardEntry = game.leaderboardEntries[index]
                        RowView(index: index + 1, score: leaderBoardEntry.score, date: leaderBoardEntry.date)
                    }
                }
            }
        }
    }
}

struct HeaderView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Binding var leaderboardIsShowing: Bool
    var body: some View {
        ZStack {
            HStack {
                BigBoldText(text: "LEADERBOARD")
                if verticalSizeClass == .regular && horizontalSizeClass == .compact {
                    Spacer()
                }
            }
            HStack {
                Spacer()
                Button {
                    leaderboardIsShowing = false
                } label: {
                    RoundedImageViewStroked(systemName: "xmark")
                }
            }
        }
        .padding(.horizontal)
    }
}

struct LabelView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: Constants.General.roundedViewLength)
            Spacer()
            LabelText(text: "SCORE")
                .frame(width: Constants.LeaderBoard.scoreColumnWidth)
            Spacer()
            LabelText(text: "DATE")
                .frame(width: Constants.LeaderBoard.dateColumnWidth)
            Spacer()
        }
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static private var leaderboardIsShowing = Binding.constant(false)
    
    static var previews: some View {
        LeaderboardView(leaderboardIsShowing: leaderboardIsShowing, game: .constant(Game()))
    }
}
