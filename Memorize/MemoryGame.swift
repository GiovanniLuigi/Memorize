//
//  MemoryGame.swift
//  Memorize
//
//  Created by Giovanni Luidi Bruno on 02/04/21.
//

import Foundation


struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    }
    
    func choose(card: Card) {
        print("The user choose \(card)")
    }
}