//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/31/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation

open class PlayingCardDeck : Deck{

    override init(){
        super.init()
        for suit in PlayingCard.validSuits()
        {
            for rank in 1...PlayingCard.maxRank()
            {
                let currentCard = PlayingCard(rank: rank, suit: suit)
                self.deck.append(currentCard)
            }
            
        }
    }
    
    override open func orderDeck() {
        var temp = [PlayingCard]()
        for suit in PlayingCard.validSuits()
        {
             for rank in 1...PlayingCard.maxRank()
            {
                let index = deck.index(
                    where: {
                        ($0 as! PlayingCard).suit == suit && ($0 as! PlayingCard).rank == rank
                    })
                let tempCard = deck.remove(at: index!)as!PlayingCard
                temp.append(tempCard)
            }
        }
        deck = temp
    }
}

