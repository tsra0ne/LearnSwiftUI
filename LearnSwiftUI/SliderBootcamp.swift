//
//  SliderBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 02/08/25.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
                // "\(sliderValue)"
            )
            .foregroundStyle(color)
            
            // Slider(value: $sliderValue)
            // Slider(value: $sliderValue, in: 1...5)
            // Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(value: $sliderValue, in: 1...5, step: 1.0, label: {
                Text("Title")
            }, minimumValueLabel: {
                Text("1")
                    .font(.largeTitle)
            }, maximumValueLabel: {
                Text("5")
                    .font(.largeTitle)
            }, onEditingChanged: { _ in
                color = .green
            })
                .tint(.red)
        }
        .padding(.horizontal, 40)
    }
}

#Preview {
    SliderBootcamp()
}
