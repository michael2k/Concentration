//
//  Concentration.swift
//  Concentration
//
//  Created by Kim Myungsun on 2018. 9. 24..
//  Copyright © 2018년 com.kimmyungsun. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    var indexOfOnAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOnAndOnlyFaceUpCard, matchIndex != index {
                // check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOnAndOnlyFaceUpCard = nil
            } else {
                // either no cards or 2 cards are face up
                for fileDownIndex in cards.indices {
                    cards[fileDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOnAndOnlyFaceUpCard = index
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        // TODO: Shuffle the cards
    }
}
