//
//  ViewController.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/25/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var gameCard : PlayingCard{
        get{return self.gameCard}
        set(gameCard){
        self.gameCard = gameCard
        }
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        gameCard = PlayingCard.init()
        print(gameCard.toString())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

