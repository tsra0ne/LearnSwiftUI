//
//  SafeAreaBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            VStack {
                Text("Hello, World!")
                
                Spacer()
            }
        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
