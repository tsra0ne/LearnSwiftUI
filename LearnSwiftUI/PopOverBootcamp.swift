//
//  PopOverBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 26/07/25.
//

import SwiftUI

struct PopOverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(.all)
            
            VStack {
                Button {
//                    withAnimation(.spring(duration: 0.3)) {
                        showNewScreen.toggle()
//                    }
                } label: {
                    Text("showSheet: \(showNewScreen.description)")
                        .font(.largeTitle)
                }

                Spacer()
            }
            // Method 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            // Method 2 - TRANSITION
//            if showNewScreen {
//                NewScreen(showNewScreen: $showNewScreen)
//                    .padding(.top, 80)
//                    .transition(.move(edge: .bottom))
//            }
            
            // Method 3 - ANIMATION EFFECT
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 80)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(duration: 0.3), value: showNewScreen)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea(.all)
            
            Button {
//                dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

#Preview {
    PopOverBootcamp()
}
