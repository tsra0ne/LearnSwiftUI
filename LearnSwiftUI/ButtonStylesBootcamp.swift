//
//  ButtonStylesBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 07/08/25.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            Button("ButtonTitle") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
            
            Button("ButtonTitle") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            Button("ButtonTitle") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            
            Button("ButtonTitle") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 20))
        }
    }
}

#Preview {
    ButtonStylesBootcamp()
}
