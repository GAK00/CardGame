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
        self.suit = suit
        if(suit == "Hearts"||suit == "Diamonds"){
            self.color = UIColor.redColor()
        }
        else if(suit == "Clubs"||suit=="Spades"){
            self.color = UIColor.blackColor()
        }
        else{
            self.color = UIColor.greenColor()
        }
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
    //class modifier puts func outside method a if static
    
    class func cardRanks()->[String]
    {
        return["?","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    class func validSuits() ->[String]{
    return["❤️","♠️","♦️","♣️"]
    }
    
}
