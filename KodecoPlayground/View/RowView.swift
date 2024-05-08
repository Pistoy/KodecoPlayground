//
//  RowView.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 5.05.2024.
//

import SwiftUI

struct RowView: View {
    var index: Int
    var score: Int
    var date: Date
    
    var body: some View {
        HStack {
            RoundedTextView(text: String(index))
            Spacer()
            ScoreText(text: String(score))
            Spacer()
            DateText(date: date)
        }
        .background {
            RoundedRectangle(cornerRadius: .infinity)
                .strokeBorder(Color("RowBorderColor"), lineWidth: 2)
        }
        .padding(.horizontal)
        .frame(maxWidth: Constants.LeaderBoard.maxRowWidth)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(index: 1, score: 200, date: Date())
    }
}
