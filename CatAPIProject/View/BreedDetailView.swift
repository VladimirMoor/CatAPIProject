//
//  BreedDetailView.swift
//  CatAPIProject
//
//  Created by Владимир Муравьев on 23.09.2021.
//

import SwiftUI

struct BreedDetailView: View {
    let breed: Breed
    let imageSize: CGFloat = 300
    var body: some View {
        
        ScrollView {
            VStack {
                
                if breed.image?.url != nil {
                    AsyncImage(url: URL(string: breed.image!.url!)) { phase in
                        
                        if let image = phase.image {
                            image.resizable()
                                .scaledToFit()
                                .frame(height: imageSize)
                                .clipped()
                            
                        } else if phase.error != nil {
                            Text(phase.error?.localizedDescription ?? "unknown error")
                                .foregroundColor(Color.pink)
                                .frame(width: imageSize, height: imageSize)
                        } else {
                            ProgressView()
                                .frame(width: imageSize, height: imageSize)
                        }
                        
                    }
                } else {
                    Color.gray.frame(height: imageSize)
                }
                
                VStack(alignment: .leading, spacing: 15) {
                Text(breed.name)
                    .font(.headline)
                Text(breed.temperament)
                    .font(.footnote)
                Text(breed.description)
                    
                    HStack {
                        
                        Text("Energy level")
                        Spacer()
                        ForEach(1..<6) { id in
                            Image(systemName: "star.fill")
                                .foregroundColor(breed.energy_level > id ? Color.accentColor : Color.gray )
                        }
                        
                    }
                    
                    Spacer()
                }
                .padding()
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        
    }
}

struct BreedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BreedDetailView(breed: Breed.example1())
    }
}
