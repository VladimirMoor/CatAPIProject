//
//  BreedFetcher.swift
//  CatAPIProject
//
//  Created by Владимир Муравьев on 22.09.2021.
//

import Foundation

class BreedFetcher: ObservableObject {
    
    @Published var breeds: [Breed] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    init() {
        fetchAllBreeds()
    }
    
    func fetchAllBreeds() {
        
        isLoading = true
        
   
        
    }
    
}



