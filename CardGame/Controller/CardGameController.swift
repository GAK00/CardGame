//
//  CardGameController.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class CardGameController : UIViewController{
    private let deck:PlayingCardDeck = PlayingCardDeck.init()
    private lazy var clickCount = Int()
    
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Counter: UILabel!
    
    @IBOutlet weak var Flip: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        deck.suffleDeck()
        deck.cutDeck()
        let cardStack = deck.getDeck()
        if let Card = cardStack[0] as? PlayingCard{
            cardChanged(Card)
        }}
    @IBAction func Flip(sender: UIButton) {
        clickCount += 1
        if let Card = deck.deck[0] as? PlayingCard{
       Counter.text = "The card has been clicked \(clickCount) Times"
        
            if(Card.isFaceUp){
            Card.isFaceUp = false}
            else{
            Card.isFaceUp = true}
            cardChanged(Card)
        }
    }
    
        func cardChanged(Card:PlayingCard){
        var rank = ""
        if(Card.rank == 1||Card.rank >= 11){
            if(Card.rank == 1){
                rank = "A"
            }
            else if(Card.rank == 11){
                rank = "J"
            }
            else if(Card.rank == 12){
                rank = "Q"
            }
            else if(Card.rank == 13){
                rank = "K"
            }
        }
        else{rank = "\(Card.rank)"}
        if(Card.isFaceUp){
           Flip.setImage(Card.frontImage
            , forState: .Normal)
            Label.text = "\(rank)\(Card.suit)"
            Label.textColor = Card.color}
        else{
            Label.text = ""
            Flip.setImage(Card.backImage, forState: UIControlState.Normal)
        }
        }

    }
    


