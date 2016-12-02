//
//  CardView.swift
//  CardGame
//
//  Created by Kunz, Geran on 11/21/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class CardView
{
    internal var isFaceUp : Bool
    internal var cardBack : UIImageView
    internal var cardFront : UIImageView
    internal var topLablel : UILabel
    internal var bottomLabel : UILabel
    internal var cardCurve : CGFloat
    
    init()
    {
        isFaceUp = false
        cardBack = UIImageView()
        cardFront = UIImageView()
        topLablel = UILabel()
        bottomLabel = UILabel()
        cardCurve = CGFloat(20.00)
        
        setup()
    }
    
    func setup()
    {
      
    }
}
