//
//  PickerBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 02/08/25.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    init () {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        VStack {
            Picker(selection: $selection) {
                ForEach(filterOptions.indices, id: \.self) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
//            HStack {
//                Text("Age")
//                Text("\(selection)")
//            }
//            
//            Picker(selection: $selection) {
//                ForEach(18..<100) { age in
//                    Text("\(age)")
//                        .font(.headline)
//                        .foregroundStyle(.red)
//                        .tag(age)
//                }
//            } label: {
//                Text("Picker")
//            }
//            .pickerStyle(.inline)
//            .background(.gray.opacity(0.3))
        }

    }
}

#Preview {
    PickerBootcamp()
}
