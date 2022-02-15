//
//  emojjimemorygame.swift
//  Memory Game
//
//  Created by mac on 2/14/22.
//

import SwiftUI



class EmojiMemoryGame {
    static let emojis = ["G", "a", "b", "c", "d", "e", "f", "g", "i", "k", "l", "m", "o", "p", "z", "q"]
    static func createMemoryGame() -> Memory_Game<String> {
           Memory_Game<String>(numberOfPairOfCards: 4) {pairIndex in emojis[pairIndex]}
        }
    private var model: Memory_Game<String> = createMemoryGame()
        
    var cards: Array<Memory_Game<String>.Card> {
        return model.cards
    }
}
