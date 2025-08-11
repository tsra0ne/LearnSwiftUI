//
//  FocusStateBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 10/08/25.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    @FocusState var isFocused: Bool
    @State var textFieldText: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter text here...", text: $textFieldText)
                .focused($isFocused)
            // you can use enum with other focused variant
                .submitLabel(.route)
            
            Button("Toggle Focus") {
                isFocused.toggle()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                isFocused = true
            }
        }
    }
}

#Preview {
    FocusStateBootcamp()
}
