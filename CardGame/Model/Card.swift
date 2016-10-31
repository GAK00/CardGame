//
//  Card.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/25/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
class Card
{
    private var backImage  : UIImage
    
    private var isFaceUp : Bool
    init() {
        backImage = UIImage(named:"cardBack")!

        isFaceUp = false
            }
        
    
    
    
    
    func toString()->String
    {
        let description = "The Card is \(self.isFaceUp)"
        return description
    }
    func isUp()->Bool{
    return self.isFaceUp
    }

}
