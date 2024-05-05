//
//  SliderView.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 27.04.2024.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    var body: some View {
        Slider(value: $sliderValue, in: 1.0...100.0) { }
    minimumValueLabel: {
        SliderLabelTexts(text: "1")
            .frame(width: 35)
    } maximumValueLabel: {
        SliderLabelTexts(text: "100")
            .frame(width: 35)
    }
    }
}

