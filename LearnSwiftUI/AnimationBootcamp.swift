//
//  AnimationBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
//                withAnimation(.default.repeatForever()) {
                    isAnimated.toggle()
//                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 40 : 15)
                .fill(isAnimated ? .red : .blue)
                .frame(
                    width: isAnimated ? 80 : 250,
                    height: isAnimated ? 80 : 250
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(.default, value: isAnimated)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
