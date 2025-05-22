//
//  PaddingBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 22/05/25.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 30)
    }
}

#Preview {
    PaddingBootcamp()
}
