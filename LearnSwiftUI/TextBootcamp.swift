//
//  TextBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 20/05/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough()
//            .strikethrough(true, color: .blue)
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
//            .baselineOffset(10)
//            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
            .textSelection(.enabled)
    }
}

#Preview {
    TextBootcamp()
}
