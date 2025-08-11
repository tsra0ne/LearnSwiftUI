//
//  ColorPickerBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 02/08/25.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var selectedColor: Color = .red
    
    var body: some View {
        ZStack {
            selectedColor
                .ignoresSafeArea(.all)
            
            ColorPicker(
                "Select a color",
                selection: $selectedColor,
                supportsOpacity: true
            )
            .padding()
            .background(.black)
            .clipShape(.rect(cornerRadius: 10))
            .font(.headline)
            .foregroundStyle(.white)
            .padding(.horizontal, 50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
