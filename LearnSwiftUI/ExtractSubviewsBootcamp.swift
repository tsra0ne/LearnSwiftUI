//
//  ExtractSubviewsBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 55, color: .red)
            MyItem(title: "Orange", count: 11, color: .orange)
            MyItem(title: "Banana", count: 25, color: .yellow)
        }
    }
}

struct MyItem: View {
    var title: String
    var count: Int
    var color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}
