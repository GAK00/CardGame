//
//  CardGameController.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class CardGameController : UIViewController{
    
    private let gameCard : PlayingCard = PlayingCard.init()

  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(gameCard.toString())
        
    }
}
