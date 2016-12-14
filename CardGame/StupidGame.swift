//
//  StupidGame.swift
//  CardGame
//
//  Created by Kunz, Geran on 11/11/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
class StupidGame {
    fileprivate var deck : PlayingCardDeck
    fileprivate var hasEnded : Bool
    fileprivate var hand : [PlayingCard]
    fileprivate var state : String
    
    
    init()
    {
        deck = PlayingCardDeck()
        hasEnded = false
        hand = [PlayingCard]()
        state = "Error"
    }
    
    func startGame()
    {
        deck.suffleDeck()
        playGame()
   
    }
    
    fileprivate func playGame()
    {
            if(!hasEnded)
            {
                var draw: [Card?] = [Card?]()
                draw.append(deck.drawCard())
                draw.append(deck.drawCard())
                checkCards(draw)
            }
            
        
    }
    fileprivate func win()
    {
        hasEnded = true
        state = "Win"
    }
    fileprivate func lose()
    {
        hasEnded = true
        state = "Lose"
    }
    fileprivate func checkCards(_ draw : [Card?])
    {
        hand.removeAll()
        for pos in(0...draw.count-1){
            if(!(draw[pos]==nil)){
        let Card = draw[pos]
            if(Card != nil){
        let currentCard : PlayingCard = (Card as? PlayingCard)!
                hand.append(currentCard)}}}
        if(hand.count == 2)
        {
            if(doCardsMatch(hand))
            {
                win()
            }
        }
        else
        {
            lose()
        }
    }
   fileprivate func doCardsMatch(_ hand : [PlayingCard]) -> Bool
   {
        var match : Bool
        match = false
        if(hand[0].rank == hand[1].rank && hand[0].color == hand[1].color)
        {
            match = true
        }
        return match
    }
    
    func isGameOver() -> Bool
    {
        return hasEnded
    }
    func buttonPressed()
    {
        playGame()
    }
    func getHand() -> [PlayingCard]
    {
        return hand
    }
    
    func getWinOrLose()->String
    {
        return state
    }
    func shuffleGameDeck()
    {
        deck.suffleDeck()
    }
    func cutGameDeck()
    {
        deck.cutDeck()
    }

}
