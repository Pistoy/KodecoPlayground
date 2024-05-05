//
//  RowView.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 5.05.2024.
//

import SwiftUI

struct RowView: View {
    var body: some View {
        HStack {
            RoundedTextView(text: "1")
            Spacer()
            Text("ads")
            Spacer()
            Text("1928")
        }
        .padding()
        .overlay {
            RoundedRectangle(cornerRadius: 200)
                .strokeBorder(Color.blue.opacity(0.25))
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}
