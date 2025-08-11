//
//  TabViewBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 03/08/25.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 2
    let icons: [String] = ["heart.fill", "square.and.arrow.up.on.square.fill", "person.circle.fill", "plus.circle.fill"]
    
    var body: some View {
//        TabView {
//            ForEach(icons, id: \.self) { icon in
//                Image(systemName: icon)
//                    .resizable()
//                    .scaledToFit()
//                    .padding(50)
//            }
//        }
//        .background(.gray)
//        .frame(height: 300)
//        .tabViewStyle(.page)
        
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
                .badge(5)
            Text("Browse Tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
                .badge(1)
            Text("Profile Tab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
                .badge(0)
        }
        .tint(.red)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(.all, edges: .top)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 10))
                }
            }
        }
    }
}
