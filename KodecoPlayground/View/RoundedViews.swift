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

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
        RoundedImageViewFilled(systemName: "list.bullet")
    }
}
