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
        var tempDeck : Array<PlayingCard>
        for pos in 1...52
        {
            let cardIndex =
            tempDeck.removeAtIndex(<#T##index: Int##Int#>)
        
        }
    }
    func orderDeck(){}
}
