//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Giovanni Luidi Bruno on 03/04/21.
//

import Foundation


extension Array where Element: Identifiable {
    
    func firstIndex(matching: Element) -> Int? {
        return self.firstIndex { $0.id == matching.id }
    }
    
}
