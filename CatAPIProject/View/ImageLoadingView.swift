//
//  ImageLoadingView.swift
//  CatAPIProject
//
//  Created by Владимир Муравьев on 24.09.2021.
//

import SwiftUI

struct ImageLoadingView: View {
        
    @StateObject var imageLoader: ImageLoader
    let imageSize: CGFloat = 100
    
    init(url: String?) {
        
        self._imageLoader = StateObject(wrappedValue: ImageLoader(url: url))
        
    }
    
    
    var body: some View {
        Group {
        if imageLoader.image != nil {
            Image(uiImage: imageLoader.image!)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)
                .clipped()
        } else if imageLoader.errorMessage != nil {
            Text(imageLoader.errorMessage!)
                .foregroundColor(Color.pink)
                .frame(width: imageSize, height: imageSize)
        } else {
            ProgressView()
                .frame(width: imageSize, height: imageSize)
        }
       }
        .onAppear {
            imageLoader.fetch()
        }

    }
}

struct ImageLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLoadingView(url: nil)
    }
}
