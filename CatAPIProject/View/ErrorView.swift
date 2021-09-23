//
//  ErrorView.swift
//  CatAPIProject
//
//  Created by Владимир Муравьев on 22.09.2021.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var breedFetcher: BreedFetcher
    
    var body: some View {
        VStack {
            Text("😿")
                .font(.system(size: 80))
            Text(breedFetcher.errorMessage ?? "")
        }
        
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(breedFetcher: BreedFetcher())
    }
}
