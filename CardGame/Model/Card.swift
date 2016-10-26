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
        set{self.backImage = newValue}
        get{return self.backImage}
    }
    private var isFaceUp : Bool
    init() {
        isFaceUp = false;
        backImage = UIImage()}
        
        func toString()->String
    {
        let description = "The Card is \(isFaceUp)"
        return description
    }
    func getBackImage()->UIImage
    {
    return backImage
    }
    func getIsFaceUp() ->Bool
    {
        return isFaceUp
    }
}
