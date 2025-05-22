//
//  StacksBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 21/05/25.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            }
            
            VStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            }
            
            ZStack {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 125, height: 125)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
            }
        }
    }
}

#Preview {
    StacksBootcamp()
}
