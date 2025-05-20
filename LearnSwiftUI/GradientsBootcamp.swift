//
//  GradientsBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 20/05/25.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom
//                )
//                RadialGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 200
//                )
                AngularGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    center: .topLeading,
                    angle: Angle(degrees: 180 + 45)
                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
