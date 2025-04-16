//
//  ListHeaderView.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import SwiftUI

struct ListHeaderView: View {
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "eyes")
            Text("Click on any cell for further information")
        }
        .font(.caption)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ListHeaderView()
    }
}

