//
//  GridBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders]
            ) {
                Section {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding()
                }
                
                Section {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 2")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.orange)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    GridBootcamp()
}
