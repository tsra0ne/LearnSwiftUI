//
//  TextEditorBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 30/07/25.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.7))
                    .background(.gray) // does not work
                    .cornerRadius(10)
                    .clipShape(.rect(cornerRadius: 10))
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .clipShape(.rect(cornerRadius: 10))
                }
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Text Editor Bootcamp")
        }
        
    }
}

#Preview {
    TextEditorBootcamp()
}
