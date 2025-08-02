//
//  AlertBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 28/07/25.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        Button("Click Here") {
            showAlert.toggle()
        }
        .alert("Alert 1", isPresented: $showAlert) {
            Button(role: .destructive) {
                // Handle the deletion.
            } label: {
                Text("Delete")
            }
            Button("Retry") {
                // Handle the retry action.
            }
        }
    }
}

#Preview {
    AlertBootcamp()
}
