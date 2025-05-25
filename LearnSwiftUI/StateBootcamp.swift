//
//  StateBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.red
    @State var title: String = "Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack {
                    Button("Button 1") {
                        backgroundColor = .green
                        title = "Button #1 Clicked"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        title = "Button #2 Clicked"
                        count -= 1
                    }
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
