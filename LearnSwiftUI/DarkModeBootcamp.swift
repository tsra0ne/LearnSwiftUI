//
//  DarkModeBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 03/08/25.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This color is SECONDARY")
                        .foregroundStyle(.secondary)
                    Text("This color is BLACK")
                        .foregroundStyle(.black)
                    Text("This color is WHITE")
                        .foregroundStyle(.white)
                    Text("This color is RED")
                        .foregroundStyle(.red)
                    Text("This color is globally adaptive!")
                        .foregroundStyle(Color("AdaptiveColor"))
                    Text("This is locally adaptive!")
                        .foregroundStyle(colorScheme == .light ? .blue : .yellow)
                }
            }
        }
    }
}

#Preview {
    Group {
        DarkModeBootcamp()
    }
}
