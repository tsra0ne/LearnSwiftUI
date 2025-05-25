//
//  ForEachBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    var contents: [String] = ["Hi", "Hello", "Hello Everyone!"]
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                Circle()
//                    .fill(Color.red)
//            }
            ForEach(contents.indices, id: \.self) { index in
                Text("\(contents[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
