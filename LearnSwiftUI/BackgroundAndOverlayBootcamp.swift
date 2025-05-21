//
//  BackgroundAndOverlayBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 21/05/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(Color.white)
            .background {
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.purple, .blue]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .blue, radius: 10, x: 0, y: 10)
                    .overlay(alignment: .bottomTrailing) {
                        Circle()
                            .fill(.pink)
                            .frame(width: 35, height: 45)
                            .overlay {
                                Text("5")
                                    .font(.headline)
                                    .foregroundStyle(Color.white)
                            }
                            .shadow(color: .pink, radius: 10, x: 5, y: 5)
                    }
            }
        
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
