//
//  Deck.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/31/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation
public class Deck{
   lazy var deck = [Card]()
    init(){}
    func getDeck() -> Array<Card>
    {
    return(deck)
    }
    public func suffleDeck(){
        var tempDeck = [Card]()
        if(deck.count != 1){
        for _ in 1...deck.count
        {
            let cardIndex = Int(arc4random_uniform(UInt32(deck.count)))
            let card = deck.removeAtIndex(cardIndex)
            tempDeck.append(card)
            
        }
            deck = tempDeck}
    }
    public func orderDeck(){}
    
    public func cutDeck(){
        let cardIndex:Int = deck.count/2
        var tempDeck = deck
        if(cardIndex-1 <= 0){}
        else{
        for pos in 0...cardIndex-1{
            let pos2 = cardIndex + pos
        tempDeck[pos2]=deck[pos]
        }
        for pos3 in cardIndex...deck.count-1{
            tempDeck[pos3-cardIndex]=deck[pos3]
        }
            deck = tempDeck}
    }
    func drawCard()->Card?
    {if self.deck.count>0
    {
        return self.deck.removeAtIndex(0)}
    else{return nil}
    }
    func drawRandomCard()->Card?
    {
        if(self.deck.count>0){
            return deck.removeAtIndex(Int(arc4random_uniform(UInt32(deck.count))))}
        else{return nil}}
}

