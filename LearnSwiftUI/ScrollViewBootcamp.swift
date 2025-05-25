//
//  ScrollViewBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .shadow(radius: 10)
                                    .frame(width: 250, height: 150)
                                    .padding()
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
