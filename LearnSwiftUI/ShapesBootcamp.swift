//
//  ShapesBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 20/05/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(.green)
//            .foregroundStyle(.pink)
//            .stroke()
//            .stroke(.red)
//            .stroke(.blue, lineWidth: 30)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(.purple, lineWidth: 20)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
