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
        Slider(value: $sliderValue, in: 1.0...100.0, step: 1) { }
    minimumValueLabel: {
        SliderLabelTexts(text: "1")
    } maximumValueLabel: {
        SliderLabelTexts(text: "100")
    }
    }
}

