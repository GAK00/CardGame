//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/31/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck{

    override init(){
        super.init()
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank < PlayingCard.maxRank(); rank += 1
            {
                let currentCard = PlayingCard(rank: rank, suit: suit)
                self.deck.append(currentCard)
            }
            
        }
    }
    
    func suffleDeck(){
        var tempDeck = [Card]()
        for _ in 1...52
        {
            let cardIndex = Int(arc4random_uniform(UInt32(deck.count)))
            let card = deck.removeAtIndex(cardIndex)
            tempDeck.append(card)
        
        }
        deck = tempDeck
    }
    func orderDeck(){}
}
