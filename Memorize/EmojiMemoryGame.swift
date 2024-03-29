//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Giovanni Luidi Bruno on 02/04/21.
//

import Foundation


class EmojiMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame<String>
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    init() {
        let emojis = ["👻", "💩", "🕷", "🦉", "🧛🏻"]
        model = MemoryGame(numberOfPairsOfCards: Int.random(in: 3...emojis.count), cardContentFactory: { pairIndex in
            emojis[pairIndex]
        })
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
