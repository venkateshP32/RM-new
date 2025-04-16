//
//  ProgressView.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import SwiftUI

struct ProgressViewView: View {
    
    var body: some View {
        
        HStack {
            
            Spacer()
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint:Color("DeepBlue")))
                .id("loader")
            
            Spacer()
        }
    }
}

struct ProgressViewView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ProgressViewView()
    }
}
