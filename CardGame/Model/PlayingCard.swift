//
//  PlayingCard.swift
//  CardGame
//
//  Created by Kunz, Geran on 10/25/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    private var rank : Int
    {
        get{return self.rank}
        set(rank)
        {self.rank = rank}

    }
    private var suit : String
    {
        get{return self.suit}
        set(suit)
        {self.suit = suit}
    }
    private var color : UIColor
    {
        get{return self.color}
        set(color)
        {self.color = color}
        
    }
    private var frontImage : UIImage
    {
        get{return self.frontImage}
        set(frontImage)
        {self.frontImage = frontImage}
    }
    override init(){
        super.init()
        frontImage = UIImage()
        color = UIColor()
        rank = 0
        suit = String()
    }
    override func toString() -> String {
        let facing : String
        if(self.isUp()){
        facing = "Up"}
        else{
        facing = "Down"}
        let description = "This PlayingCard has a face value of \(rank), a color of \(color), is of the \(suit) suit and, The card is facing" + facing
        return description
    }
    
}
