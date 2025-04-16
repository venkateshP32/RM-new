//
//  OtherCellView.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import SwiftUI

struct OtherCellView: View {
    
    @Environment(\.colorScheme) var currentMode
    
    var name: String
    var infoA: String
    var infoBName: String
    var infoB: String
    
    let spacing: CGFloat = 10
    
    init(name: String, infoA: String, infoBName: String, infoB: String) {
        
        self.name = name
        self.infoA = infoA
        self.infoBName = infoBName
        self.infoB = infoB
    }
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: spacing) {
            
            Spacer()
            
            Text(name)
                .foregroundColor(currentMode == .dark ? Color("LightBlue") : Color("NoBlack"))
            
            VStack(alignment: .leading) {
                
                Text(infoA)
                
                if infoB == "Unknown" {
                    
                    Text("Unknown")
                } else {
                    
                    Text("\(infoBName): \(infoB)")
                }
            }
            .font(.footnote)
            .foregroundColor(currentMode == .dark ? Color("Silver") : Color("DeepBlue"))
            Spacer()
        }
    }
}

struct OtherCellView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        OtherCellView(
            name: "Earth",
            infoA: "Planet",
            infoBName: "Dimension",
            infoB: "Unknown")
    }
}

