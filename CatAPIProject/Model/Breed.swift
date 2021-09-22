//
//  CatBreed.swift
//  CatAPIProject
//
//  Created by Владимир Муравьев on 22.09.2021.
//

import Foundation


struct Breed: Codable {
    
    let id: String
    let name: String
    let temperament: String
    let energy_level: Int
    let description: String
    let image: BreedImage?
    
}


