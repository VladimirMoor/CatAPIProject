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
        
        let url = URL(string: "https://api.thecatapi.com/v1/breeds")!

        let task = URLSession.shared.dataTask(with: url) { [unowned self] (data, response, error) in
            
            if let response = response as? HTTPURLResponse, !(200...299).contains(response.statusCode) {
                
            }
            
            DispatchQueue.main.async {
            self.isLoading = false
            }
            
            if let data = data {
                
               let decoder = JSONDecoder()
                do {
                    let breeds = try decoder.decode([Breed].self, from: data)
                    DispatchQueue.main.async {
                        self.breeds = breeds
                    }
                } catch {
                    print(error.localizedDescription)
                }
              }
            
        }

        task.resume()
        
    }
    
}



