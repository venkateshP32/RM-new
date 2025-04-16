//
//  RenderImage.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import SwiftUI

struct RenderImage: View {

    let imageUrlString: String
    var width: CGFloat? = 60
    var height: CGFloat? = 60
    
    init(imageUrlString: String, width: CGFloat? = 60, height: CGFloat? = 60) {
        self.imageUrlString = imageUrlString
        self.width = width
        self.height = height
    }
    
    var body: some View {
        
        VStack {
            
            AsyncImage(url: URL(string: imageUrlString)) { phase in
                
                switch phase {
                    
                case .empty:
                    ProgressView()
                    
                case .success(let image):
                    image.resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(maxWidth: width, maxHeight: height)
                         .clipShape(RoundedRectangle(cornerRadius: 60))
                         .shadow(color: .gray, radius: 2, x: 0, y: 2)
                         .id("imageLoaded")
                    
                case .failure:
                    Image("noImageAvailable")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: width, maxHeight: height)
                        .clipShape(RoundedRectangle(cornerRadius: 60))
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        .id("defaultImageLoaded")
                    
                @unknown default:
                    EmptyView()
                }
            }
        }
    }
}

