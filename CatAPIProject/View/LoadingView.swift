//
//  LoadingView.swift
//  CatAPIProject
//
//  Created by Владимир Муравьев on 22.09.2021.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        
        VStack {
            Text("🐱")
                .font(.system(size: 80))
            ProgressView()
                .padding()
            Text("Getting the cats...")
                .foregroundColor(.gray)
        }
        
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
