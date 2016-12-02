//
//  CardGameController.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class CardGameController : UIViewController{
    private lazy var deck:PlayingCardDeck = PlayingCardDeck()
    private lazy var clickCount = Int()
   private lazy var game : StupidGame = StupidGame()
    

    @IBOutlet weak var Counter: UILabel!
    
    @IBOutlet weak var Flip: UIButton!
    
    @IBOutlet weak var Flip2: UIButton!
    
    override func viewDidLoad() {
        game.startGame()
        super.viewDidLoad()
        }
    @IBAction func Flip(sender: UIButton)
    {
        game.buttonPressed()

        if(game.isGamePlaying())
        {
            if(game.getWinOrLose()=="Win")
            {
                Flip.setTitleColor(game.getHand()[0].color, forState: .Normal)
                Flip.setTitle("\(game.getHand()[0].getCardData())",forState: .Normal)
                Flip2.setTitleColor(game.getHand()[1].color, forState: .Normal)
                Flip2.setTitle("\(game.getHand()[1].getCardData())",forState: .Normal)
            }
            Counter.text = game.getWinOrLose()
        }
        else{
        Flip.setTitleColor(game.getHand()[0].color, forState: .Normal)
        Flip.setTitle("\(game.getHand()[0].getCardData())",forState: .Normal)
        Flip2.setTitleColor(game.getHand()[1].color, forState: .Normal)
            Flip2.setTitle("\(game.getHand()[1].getCardData())",forState: .Normal)}
        
    }
        
    @IBAction func DeckCut(sender: UIButton) {
        game.cutGameDeck()
    }
    @IBAction func ShuffleDeck(sender: UIButton) {
        game.shuffleGameDeck()
    }
    
    private func flip()
    {
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

    }
    





