//
//  SpacerBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 22/05/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    SpacerBootcamp()
}
