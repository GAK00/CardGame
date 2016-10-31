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
   
     init( rank: Int,suit: String){
        
        self.rank = rank
        frontImage = UIImage(named: "cardFront")!
        color = UIColor()
        self.suit = suit
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
