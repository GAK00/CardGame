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
        set(backImage)
        {self.backImage = backImage}
        get{return self.backImage}
    }
    private var isFaceUp : Bool{
        set(isFaceUp)
        {self.isFaceUp = isFaceUp}
        get{return self.isFaceUp}


}
    init() {
        isFaceUp = false;
        backImage = UIImage()
    }
        
    
    
    
    
    func toString()->String
    {
        let description = "The Card is \(isFaceUp)"
        return description
    }
   

}
