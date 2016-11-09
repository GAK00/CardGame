//
//  CardGameController.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class CardGameController : UIViewController{
    private var deck:PlayingCardDeck = PlayingCardDeck.init()
    private lazy var clickCount = Int()
    

    @IBOutlet weak var Counter: UILabel!
    
    @IBOutlet weak var Flip: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    @IBAction func Flip(sender: UIButton) {
        clickCount += 1
        if let currentCard = deck.drawCard() as? PlayingCard{
            Flip.setTitleColor(currentCard.color, forState: .Normal)
        Flip.setTitle("\(currentCard.getCardData())",forState: .Normal)
             Counter.text = "The card has been clicked \(clickCount) Times"
        }
      
        else{Flip.setTitle("",forState: .Normal)
        Counter.text = "The deck is out of cards - Reinitializing"
        deck = PlayingCardDeck.init()}
        }
    
    @IBAction func DeckCut(sender: UIButton) {
        deck.cutDeck()
    }
    @IBAction func ShuffleDeck(sender: UIButton) {
        deck.suffleDeck()
    }
    }
    

    


