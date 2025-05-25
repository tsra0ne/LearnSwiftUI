//
//  ButtonsBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "Title"
    var body: some View {
        VStack {
            Text(title)
            Button("Click Here") {
                title = "Button Clicked"
            }
            
            Button {
                title = "Button #2 Clicked"
            } label: {
                Text("Click".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.blue)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
            }

        }
    }
}

#Preview {
    ButtonsBootcamp()
}
