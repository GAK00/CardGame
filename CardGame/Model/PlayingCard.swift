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
    private var suit : String
    private var color : UIColor
    private var frontImage : UIImage
    override init(rank: Int,suit: Sting){
        rank = 0
        frontImage = UIImage()
        color = UIColor()
        suit = String()
        super.init()
       
    }
    override func toString() -> String {
        let facing : String
        if(self.isUp()){
        facing = "up"}
        else{
        facing = "down"}
        let description = "This PlayingCard has a face value of \(rank), a color of \(color), is of the \(suit) suit and, The card is facing" + facing
        return description
    }
    
}
