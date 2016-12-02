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
    private lazy var wins = Int()
    private lazy var losses = Int()
    

    @IBOutlet weak var Counter: UILabel!
    

    @IBOutlet weak var Wins: UILabel!
    @IBOutlet weak var Losses: UILabel!
    @IBOutlet weak var Flip: UIButton!
    
    @IBOutlet weak var Flip2: UIButton!
    
    override func viewDidLoad() {
        wins = 0
        losses = 0
        Wins.text = "Wins: \(wins)"
        Losses.text = "Losses: \(losses)"
        game.startGame()
        super.viewDidLoad()
        }
    @IBOutlet weak var resetButton: UIButton!
    @IBAction func Flip(sender: UIButton)
    {
        game.buttonPressed()

        if(game.isGameOver())
        {
            print(resetButton.hidden)
            resetButton.hidden = false
            print(resetButton.hidden)
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
    
    @IBAction func Reset(sender: UIButton)
    {
        resetButton.hidden = true
        Counter.text = ""
        Flip.setTitle("", forState: UIControlState.Normal)
        Flip2.setTitle("", forState: UIControlState.Normal)
        game = StupidGame()
        game.startGame()
        
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
    





