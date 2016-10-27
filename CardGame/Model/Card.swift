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
    private var backImage  : UIImage{
        
        get{return self.backImage}
        set(backImage)
        {self.backImage = backImage}
    }
    private var isFaceUp : Bool{
        
        get{return self.isFaceUp}
        set(isFaceUp)
        {self.isFaceUp = isFaceUp}


}
    init() {
        backImage = UIImage()

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
