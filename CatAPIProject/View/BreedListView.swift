//
//  BreedListView.swift
//  CatAPIProject
//
//  Created by Владимир Муравьев on 22.09.2021.
//

import SwiftUI

struct BreedListView: View {
    let breeds: [Breed]
    
    var body: some View {
        NavigationView {
        List {
            ForEach(breeds) { breed in
                
                NavigationLink {
                    BreedDetailView(breed: breed)
                } label: {
                    BreedRow(breed: breed)
                }
            }
        }
        .listStyle(.plain)
        .navigationTitle("Find your favorite cat")
      }
    }
}

struct BreedListView_Previews: PreviewProvider {
    static var previews: some View {
        BreedListView(breeds: BreedFetcher.successState().breeds)
    }
}
