//
//  String+CapitalizeFirstLetter.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
extension String {
    
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
