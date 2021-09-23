//
//  BreedListView.swift
//  CatAPIProject
//
//  Created by Владимир Муравьев on 22.09.2021.
//

import SwiftUI

struct BreedListView: View {
    let breeds: [Breed]
    
    @State private var searchText: String = ""
    
    var filteredBreeds: [Breed] {
        if searchText.count == 0 {
            return breeds
        } else {
            return breeds.filter { $0.name.contains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
        List {
            ForEach(filteredBreeds) { breed in
                
                NavigationLink {
                    BreedDetailView(breed: breed)
                } label: {
                    BreedRow(breed: breed)
                }
            }
        }
        .listStyle(.plain)
        .navigationTitle("Find your favorite cat")
        .searchable(text: $searchText)
      }
    }
}

struct BreedListView_Previews: PreviewProvider {
    static var previews: some View {
        BreedListView(breeds: BreedFetcher.successState().breeds)
    }
}
