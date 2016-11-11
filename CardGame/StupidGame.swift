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
                if let playingCard1 = (deck.drawCard() as? PlayingCard)
                {
                    if let playingCard2 = (deck.drawCard() as? PlayingCard)
                    {
                        if(playingCard1.rank == playingCard2.rank && playingCard1.color == playingCard2.color)
                        {
                            win()
                        }
                    }
                    else
                    {
                        lose()
                    }
                }
                else
                {
                    lose()
                }
                
            }
            
        }
    }
    func win(){}
    func lose(){}

}
