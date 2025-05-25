//
//  TransitionBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    withAnimation(.easeInOut) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
            }
            
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
