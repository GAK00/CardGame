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
        for rank in 1...13
        {
            deck.append(PlayingCard(rank: rank, suit: "Spades"))
            deck.append(PlayingCard(rank: rank, suit: "Clubs"))
            deck.append(PlayingCard(rank: rank, suit: "Diamonds"))
            deck.append(PlayingCard(rank: rank, suit: "Hearts"))
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
