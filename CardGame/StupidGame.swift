//
//  StupidGame.swift
//  CardGame
//
//  Created by Kunz, Geran on 11/11/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
class StupidGame {
    internal var deck : PlayingCardDeck
    internal var hasEnded : Bool
    internal var buttonClicked : Bool
    
    
    init()
    {
        deck = PlayingCardDeck()
        hasEnded = false
        buttonClicked = false
    }
    
    func startGame()
    {
        deck.suffleDeck()
        while(!hasEnded)
        {
            if(buttonClicked)
            {
                buttonClicked = false;
                let draw: PlayingCardDeck
                draw = PlayingCardDeck()
                draw.deck.removeAll()
                draw.deck.append(deck.deck[0])
                draw.deck.append(deck.deck[1])
              checkCards(draw)
            }
            
        }
    }
    func win(){}
    func lose(){}
    func checkCards(draw : PlayingCardDeck)
    {
        var trueHand=[PlayingCard]()
        for _ in(0...draw.deck.count){
        let Card = draw.drawCard()
        if(Card != nil){}
        let currentCard : PlayingCard = (Card as? PlayingCard)!
            trueHand.append(currentCard)}
        if(trueHand.count == 2)
        {
        }
    }
    func doCardsMatch(hand : [PlayingCard]) -> Bool
    {
        var match : Bool
        match = false
        if(hand[0].rank == hand[0].rank && hand[1].color == hand[1].color)
        {
            match = true
        }
        return match
    }

}
