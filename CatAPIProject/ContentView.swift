//
//  ContentView.swift
//  CatAPIProject
//
//  Created by Владимир Муравьев on 22.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var breedFetcher = BreedFetcher()
    
    var body: some View {
        
        if breedFetcher.isLoading {
            LoadingView()
        } else if breedFetcher.errorMessage != nil {
            ErrorView(breedFetcher: breedFetcher)
        } else {
            BreedListView(breeds: breedFetcher.breeds)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
