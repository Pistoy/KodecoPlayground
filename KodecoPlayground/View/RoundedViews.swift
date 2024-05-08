//
//  RoundedViews.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 2.05.2024.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56, height: 56)
            .overlay {
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2)
            }
    }
}

struct RoundedImageViewFilled: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56, height: 56)
            .background {
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            }
    }
}

struct RoundedRectTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .bold()
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Color.gray, lineWidth: 2, antialiased: false)
                    .frame(width: 100, height: 84)
            }
    }
}

struct RoundedTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay {
                Circle()
                    .strokeBorder(Color("RowBorderColor"), lineWidth: 2)
            }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        RoundedTextView(text: "1")
    }
}
