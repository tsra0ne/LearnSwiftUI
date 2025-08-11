//
//  OnAppearBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 03/08/25.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<10000, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 100, height: 100)
                            .foregroundColor(.blue)
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text."
                }
            }
            .onDisappear {
                myText = "Ending text."
            }
            .navigationTitle("On Appear: \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
