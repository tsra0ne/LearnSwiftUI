//
//  ImageBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 20/05/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("swiftrivals")
//            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .frame(width: 300, height: 300)
//            .foregroundStyle(.red)
            .clipShape(
                RoundedRectangle(cornerRadius: 30)
            )
    }
}

#Preview {
    ImageBootcamp()
}
