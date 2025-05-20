//
//  ColorsBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 20/05/25.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.purple
//                Color(hue: 1.0, saturation: 0.38, brightness: 0.29)
//                Color.primary
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

#Preview {
    ColorsBootcamp()
}
