//
//  InitsAndEnumsBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 25/05/25.
//

import SwiftUI

struct InitsAndEnumsBootcamp: View {
    
    enum Fruit {
        case apple
        case orange
    }
    
    let backgroundColor: Color
    let title: String
    let count: Int
    
    init(fruit: Fruit, count: Int) {
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        } else {
            self.backgroundColor = .orange
            self.title = "Oranges"
        }
        self.count = count
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            Text(title)
        }
        .padding(30)
        .background(backgroundColor)
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
    }
}

#Preview {
    HStack {
        InitsAndEnumsBootcamp(fruit: .apple, count: 55)
        InitsAndEnumsBootcamp(fruit: .orange, count: 22)
    }
}
