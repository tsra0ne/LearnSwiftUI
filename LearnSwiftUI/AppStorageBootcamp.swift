//
//  AppStorageBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 03/08/25.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("username") var username: String?
    
    var body: some View {
        VStack {
            Text(username ?? "Add username here...")
            
            if let username {
                Text(username)
            }
            
            Button("Save") {
                username = "Rio"
            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
