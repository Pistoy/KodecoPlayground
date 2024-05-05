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

struct RoundedTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .padding()
            .overlay {
                Circle()
                    .strokeBorder(Color.blue.opacity(0.25), lineWidth: 2)
            }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        RoundedTextView(text: "1")
    }
}
