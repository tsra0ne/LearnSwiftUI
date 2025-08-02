//
//  ContextMenuBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 29/07/25.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Home")
                .font(.headline)
            Text("How to use Context Menu")
            
        }
        .foregroundStyle(.white)
        .padding(20)
        .background(.blue)
        .clipShape(.rect(cornerRadius: 20))
        .contextMenu {
            Button {
                
            } label: {
                HStack {
                    Text("Settings")
                    Image(systemName: "gear")
                }
            }
            Button {
                
            } label: {
                Label("Logout", systemImage: "xmark")
            }
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
