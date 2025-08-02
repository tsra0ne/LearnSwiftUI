//
//  NavigationStackBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 27/07/25.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    var fruits: [String] = ["Apples", "Bananas", "Oranges", "Mangoes", "Pineapple"]
    
    @State var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ZStack {
                ScrollView {
                    VStack {
                        
                        Button {
                            stackPath.append(contentsOf: ["Oranges", "Mangoes", "Pineapple"])
                        } label: {
                            Text("Super Segue")
                        }
                        
                        Button {
                            stackPath.append("Sravan")
                        } label: {
                            Text("Sravan")
                        }
                        
                        ForEach(fruits, id: \.self) { fruit in
                            NavigationLink(value: fruit) {
                                Text(fruit)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: String.self) { fruit in
                Text(fruit)
            }
            .navigationTitle("Navigation Stack")
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "house")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
            }
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    stackPath.append("Screen 1")
                }
                
                Button("Screen 2") {
                    stackPath.append("Screen 2")
                }
            }
        }
    }
}

#Preview {
    NavigationStackBootcamp()
}
