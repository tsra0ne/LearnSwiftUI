//
//  FramesBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 21/05/25.
//

import SwiftUI

struct FramesBootcamp: View {
    var body: some View {
        Text("Hello, World!")
//            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.red)
            .frame(height: 100)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity)
            .background(Color.yellow)
    }
}

#Preview {
    FramesBootcamp()
}
