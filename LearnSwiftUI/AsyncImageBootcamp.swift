//
//  AsyncImageBootcamp.swift
//  LearnSwiftUI
//
//  Created by Sravan Goud on 03/08/25.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://avatars.githubusercontent.com/u/54990208?s=400&u=9e899762678a3570d69eb9a469d97f9754c0107d&v=4")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(.rect(cornerRadius: 20))
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            @unknown default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .clipShape(.rect(cornerRadius: 20))
//        }, placeholder: {
//            ProgressView()
//        })
    }
}

#Preview {
    AsyncImageBootcamp()
}
