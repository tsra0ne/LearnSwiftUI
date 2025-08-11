//
//  ViewModelBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 03/08/25.
//

import SwiftUI

struct FruitModel: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Apple", count: 2)
        let fruit2 = FruitModel(name: "Banana", count: 5)
        let fruit3 = FruitModel(name: "Orange", count: 4)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.fruits.append(contentsOf: [fruit1, fruit2, fruit3])
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
    @StateObject var viewModel: FruitViewModel = .init()
    
    var body: some View {
        NavigationStack {
            List {
                if viewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(viewModel.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                        }
                    }
                    .onDelete { indexSet in
                        viewModel.deleteFruit(index: indexSet)
                    }
                }
            }
            .listStyle(.inset)
            .navigationTitle("ViewModel BC")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        NextView(viewModel: viewModel)
                    } label: {
                        Image(systemName: "arrow.right")
                    }
                }
            }
        }
        .environmentObject(viewModel)
    }
}

struct NextView: View {
    
    @ObservedObject var viewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            VStack {
                ForEach(viewModel.fruits) { fruit in
                    Text(fruit.name)
                }
                
                NavigationLink {
                    NextPageView()
                } label: {
                    Text("Next Page")
                }
            }
        }
    }
}

struct NextPageView: View {
    
    @EnvironmentObject var viewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack {
                ForEach(viewModel.fruits) { fruit in
                    Text(fruit.name)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
