//
//  ExtractedFunctionsBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            // background
            backgroundColor.ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
            }

        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
