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
    internal var rank : Int
    internal var suit : String
    internal var color : UIColor
    
    
    override init()
    {
        self.rank = 0
        suit = ""
        color = UIColor()
        super.init()
    }
   
     init( rank: Int,suit: String){
        
        self.rank = rank
        self.suit = suit
        if(suit == "❤️"||suit == "♦️"){
            self.color = UIColor.red
        }
        else if(suit == "♣️"||suit=="♠️"){
            self.color = UIColor.black
        }
        else{
            self.color = UIColor.green
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
    
    func getColor() ->UIColor
    {
        return color
    }
    
    func getCardData() ->String
    {
        let data = "\(PlayingCard.cardRanks()[rank])\(suit)"
        return data
    
    }
    //class modifier puts func outside method a if static
    
    class func cardRanks()->[String]
    {
        return["?","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    class func validSuits() ->[String]{
    return["❤️","♠️","♦️","♣️"]
    }
    class func maxRank() -> Int{
        return cardRanks().count-1
    
    }
    
}
