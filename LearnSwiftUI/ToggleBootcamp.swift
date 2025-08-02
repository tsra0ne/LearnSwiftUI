//
//  ToggleBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 31/07/25.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Change Status")
            }
            .toggleStyle(.automatic)
            .tint(.red)
            .padding(.horizontal, 100)
            
            Spacer()
        }
    }
}

#Preview {
    ToggleBootcamp()
}
