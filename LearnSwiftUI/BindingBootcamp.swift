//
//  BindingBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ButtonView(backgroundColor: $backgroundColor)
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button {
            backgroundColor = .orange
        } label: {
            Text("Button")
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 10))
        }
    }
}

#Preview {
    BindingBootcamp()
}
