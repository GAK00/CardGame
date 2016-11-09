//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/31/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation

public class PlayingCardDeck : Deck{

    override init(){
        super.init()
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank <= PlayingCard.maxRank(); rank += 1
            {
                let currentCard = PlayingCard(rank: rank, suit: suit)
                self.deck.append(currentCard)
            }
            
        }
    }
}

