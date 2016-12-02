//
//  StupidGame.swift
//  CardGame
//
//  Created by Kunz, Geran on 11/11/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
class StupidGame {
    private var deck : PlayingCardDeck
    private var hasEnded : Bool
    private var hand : [PlayingCard]
    private var state : String
    
    
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
    
    private func playGame()
    {
            if(!hasEnded)
            {
                var draw: [Card?] = [Card?]()
                draw.append(deck.drawCard())
                draw.append(deck.drawCard())
                checkCards(draw)
            }
            
        
    }
    private func win()
    {
        hasEnded = true
        state = "Win"
    }
    private func lose()
    {
        hasEnded = true
        state = "Lose"
    }
    private func checkCards(draw : [Card?])
    {
        hand.removeAll()
        for pos in(0...draw.count-1){
            if(!(draw[pos]==nil)){
        let Card = draw[pos]
            if(Card != nil){
        let currentCard : PlayingCard = (Card as? PlayingCard)!
                hand.append(currentCard)}}}
        print ("\(hand.count)")
        if(hand.count == 2)
        {
            
            
            print(doCardsMatch(hand))
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
   private func doCardsMatch(hand : [PlayingCard]) -> Bool
   {
        var match : Bool
        match = false
        if(hand[0].rank == hand[1].rank && hand[0].color == hand[1].color)
        {
            match = true
        }
        return match
    }
    
    func isGamePlaying() -> Bool
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
