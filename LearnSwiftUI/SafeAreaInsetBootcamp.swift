//
//  SafeAreaInsetBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 10/08/25.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .safeAreaInset(edge: .bottom) {
            Text("Safe Area Inset")
                .frame(maxWidth: .infinity)
                .background(Color.red)
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
