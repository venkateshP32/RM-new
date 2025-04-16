//
//  CharacterCellView.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import SwiftUI

struct CharacterCellView: View {
    
    @Environment(\.colorScheme) var currentMode
    
    var image: String
    var name: String
    var status: String
    
    init(image: String, name: String, status: String) {
        
        self.image = image
        self.name = name
        self.status = status
    }
    
    var body: some View {
        
        HStack(spacing: 16) {
            
            RenderImage(imageUrlString: image)
            
            VStack() {
                
                Text(name)
                    .foregroundColor(currentMode == .dark ? Color("LightBlue") : Color("NoBlack"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(status)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }.padding(.bottom, 16)
    }
}

struct CharacterCellView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CharacterCellView(
            image: "https://rickandmortyapi.com/api/character/avatar/324.jpeg",
            name: "Sleepy Gary",
            status: "Alive"
        )
    }
}

