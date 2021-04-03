//
//  Array+Only.swift
//  Memorize
//
//  Created by Giovanni Luidi Bruno on 03/04/21.
//

import Foundation


extension Array {
    
    var only: Element? {
        count == 1 ? first : nil
    }
    
}
