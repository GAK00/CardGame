//
//  CardGameController.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class CardGameController : UIViewController{
    fileprivate lazy var deck:PlayingCardDeck = PlayingCardDeck()
    fileprivate lazy var clickCount = Int()
   fileprivate lazy var game : StupidGame = StupidGame()
    fileprivate lazy var wins = Int()
    fileprivate lazy var losses = Int()
    

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
    @IBAction func Flip(_ sender: UIButton)
    {
        game.buttonPressed()

        if(game.isGameOver())
        {
            resetButton.isHidden = false
            if(game.getWinOrLose()=="Win")
            {
               
                Flip.setTitleColor(game.getHand()[0].color, for: UIControlState())
                Flip.setTitle("\(game.getHand()[0].getCardData())",for: UIControlState())
                Flip2.setTitleColor(game.getHand()[1].color, for: UIControlState())
                Flip2.setTitle("\(game.getHand()[1].getCardData())",for: UIControlState())
            }

           /// }
            Counter.text = game.getWinOrLose()
        }
        else{
        Flip.setTitleColor(game.getHand()[0].color, for: UIControlState())
        Flip.setTitle("\(game.getHand()[0].getCardData())",for: UIControlState())
        Flip2.setTitleColor(game.getHand()[1].color, for: UIControlState())
            Flip2.setTitle("\(game.getHand()[1].getCardData())",for: UIControlState())}
        
    }
        
    @IBAction func DeckCut(_ sender: UIButton) {
        game.cutGameDeck()
    }
    @IBAction func ShuffleDeck(_ sender: UIButton) {
        game.shuffleGameDeck()
    }
    
    @IBAction func Reset(_ sender: UIButton)
    {
        if(game.getWinOrLose()=="Win")
        {
            wins += 1
            Wins.text = "Wins: \(wins)"
            print(wins)
        }
        else
        {
            losses += 1
            print(losses)
            Losses.text = "Losses: \(losses)"
        }
        resetButton.isHidden = true
        Counter.text = ""
        Flip.setTitle("", for: UIControlState())
        Flip2.setTitle("", for: UIControlState())
        game = StupidGame()
        game.startGame()
        
    }
    private func flip()
    {
        clickCount += 1
        if let currentCard = deck.drawCard() as? PlayingCard{
            Flip.setTitleColor(currentCard.color, for: UIControlState())
            Flip.setTitle("\(currentCard.getCardData())",for: UIControlState())
            Counter.text = "The card has been clicked \(clickCount) Times"
        }
            
        else{Flip.setTitle("",for: UIControlState())
            Counter.text = "The deck is out of cards - Reinitializing"
            deck = PlayingCardDeck.init()}
    }

    }
    





