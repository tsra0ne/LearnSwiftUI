//
//  ListBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 28/07/25.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Banana", "Orange", "Mango"]
    
    @State var veggies: [String] = ["Carrot", "Broccoli", "Cucumber"]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header:
                            HStack {
                                Text("Fruits")
                                Image(systemName: "flame.fill")
                            }
                            .font(.headline)
                            .foregroundStyle(.orange)
                
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) { addButton }
            }
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
