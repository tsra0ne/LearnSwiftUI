//
//  ActionSheetBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 29/07/25.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        Button("Click Here") {
            showActionSheet.toggle()
        }
        .confirmationDialog("Action Sheet", isPresented: $showActionSheet) {
            Button {
                // Handle import action.
            } label: {
                Text("Import")
            }
            Button("Cancel", role: .cancel) {
                
            }
        }
    }
}

#Preview {
    ActionSheetBootcamp()
}
