//
//  Cardify.swift
//  Memorize
//
//  Created by Giovanni Luidi Bruno on 03/04/21.
//

import SwiftUI


struct Cardify: ViewModifier {
    private let cornerRadius: CGFloat = 10
    private let lineWidth: CGFloat = 3
    var isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: lineWidth)
                content
            } else {
                RoundedRectangle(cornerRadius: cornerRadius).fill()
            }
        }
    }
    
}


extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
