//
//  CatBreed.swift
//  CatAPIProject
//
//  Created by Владимир Муравьев on 22.09.2021.
//

import Foundation


struct Breed: Codable, Identifiable {
    
    let id: String
    let name: String
    let temperament: String
    let energy_level: Int
    let description: String
    let image: BreedImage?
    
    init(id: String, name: String, temperament: String, energy_level: Int, description: String, image: BreedImage?) {
        self.id = id
        self.name = name
        self.temperament = temperament
        self.energy_level = energy_level
        self.description = description
        self.image = image
    }
    
    static func example1() -> Breed {
        
            return Breed(id: "abys",
                         name: "Abyssinian",
                         temperament: "Active, Energetic, Independent, Intelligent, Gentle",
                         energy_level: 5,
                         description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                         image: nil)
            
        }
        
    static func example2() -> Breed {
            return Breed(id: "cypr",
                         name: "Cyprus",
                         temperament: "Affectionate, Social",
                         energy_level: 4,
                         description: "Loving, loyal, social and inquisitive, the Cyprus cat forms strong ties with their families and love nothing more than to be involved in everything that goes on in their surroundings. They are not overly active by nature which makes them the perfect companion for people who would like to share their homes with a laid-back relaxed feline companion.",
                         image: nil)
        }
    
}



