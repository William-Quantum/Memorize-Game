//
//  Memory_game.swift
//  Memory Game
//
//  Created by mac on 2/14/22.
//

import Foundation

struct Memory_Game <CardContent> {
   private(set) var cards: Array<Card>
    
    func choose(_card: Card) {
        
    }
    
    init(numberOfPairOfCards: Int, creatCardContent: (Int)->CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards {
            let content = creatCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isfaceup: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
