//
//  Deck.swift
//  Challenge
//
//  Created by Lucas Dimer Justo on 16/03/21.
//

import Foundation

class Deck {
    var cards: [Card]
    
    init (){
        cards = [Card]()
        //25 blue cards
        cards.append(Card(type: type.zero, color: color.blue))
        cards.append(Card(type: type.one, color: color.blue))
        cards.append(Card(type: type.one, color: color.blue))
        cards.append(Card(type: type.two, color: color.blue))
        cards.append(Card(type: type.two, color: color.blue))
        cards.append(Card(type: type.three, color: color.blue))
        cards.append(Card(type: type.three, color: color.blue))
        cards.append(Card(type: type.four, color: color.blue))
        cards.append(Card(type: type.four, color: color.blue))
        cards.append(Card(type: type.five, color: color.blue))
        cards.append(Card(type: type.five, color: color.blue))
        cards.append(Card(type: type.six, color: color.blue))
        cards.append(Card(type: type.six, color: color.blue))
        cards.append(Card(type: type.seven, color: color.blue))
        cards.append(Card(type: type.seven, color: color.blue))
        cards.append(Card(type: type.eight, color: color.blue))
        cards.append(Card(type: type.eight, color: color.blue))
        cards.append(Card(type: type.nine, color: color.blue))
        cards.append(Card(type: type.nine, color: color.blue))
        cards.append(Card(type: type.skip, color: color.blue))
        cards.append(Card(type: type.skip, color: color.blue))
        cards.append(Card(type: type.reverse, color: color.blue))
        cards.append(Card(type: type.reverse, color: color.blue))
        cards.append(Card(type: type.draw2, color: color.blue))
        cards.append(Card(type: type.draw2, color: color.blue))
        
        //25 green cards
        cards.append(Card(type: type.zero, color: color.green))
        cards.append(Card(type: type.one, color: color.green))
        cards.append(Card(type: type.one, color: color.green))
        cards.append(Card(type: type.two, color: color.green))
        cards.append(Card(type: type.two, color: color.green))
        cards.append(Card(type: type.three, color: color.green))
        cards.append(Card(type: type.three, color: color.green))
        cards.append(Card(type: type.four, color: color.green))
        cards.append(Card(type: type.four, color: color.green))
        cards.append(Card(type: type.five, color: color.green))
        cards.append(Card(type: type.five, color: color.green))
        cards.append(Card(type: type.six, color: color.green))
        cards.append(Card(type: type.six, color: color.green))
        cards.append(Card(type: type.seven, color: color.green))
        cards.append(Card(type: type.seven, color: color.green))
        cards.append(Card(type: type.eight, color: color.green))
        cards.append(Card(type: type.eight, color: color.green))
        cards.append(Card(type: type.nine, color: color.green))
        cards.append(Card(type: type.nine, color: color.green))
        cards.append(Card(type: type.skip, color: color.green))
        cards.append(Card(type: type.skip, color: color.green))
        cards.append(Card(type: type.reverse, color: color.green))
        cards.append(Card(type: type.reverse, color: color.green))
        cards.append(Card(type: type.draw2, color: color.green))
        cards.append(Card(type: type.draw2, color: color.green))
        
        //25 yellow cards
        cards.append(Card(type: type.zero, color: color.yellow))
        cards.append(Card(type: type.one, color: color.yellow))
        cards.append(Card(type: type.one, color: color.yellow))
        cards.append(Card(type: type.two, color: color.yellow))
        cards.append(Card(type: type.two, color: color.yellow))
        cards.append(Card(type: type.three, color: color.yellow))
        cards.append(Card(type: type.three, color: color.yellow))
        cards.append(Card(type: type.four, color: color.yellow))
        cards.append(Card(type: type.four, color: color.yellow))
        cards.append(Card(type: type.five, color: color.yellow))
        cards.append(Card(type: type.five, color: color.yellow))
        cards.append(Card(type: type.six, color: color.yellow))
        cards.append(Card(type: type.six, color: color.yellow))
        cards.append(Card(type: type.seven, color: color.yellow))
        cards.append(Card(type: type.seven, color: color.yellow))
        cards.append(Card(type: type.eight, color: color.yellow))
        cards.append(Card(type: type.eight, color: color.yellow))
        cards.append(Card(type: type.nine, color: color.yellow))
        cards.append(Card(type: type.nine, color: color.yellow))
        cards.append(Card(type: type.skip, color: color.yellow))
        cards.append(Card(type: type.skip, color: color.yellow))
        cards.append(Card(type: type.reverse, color: color.yellow))
        cards.append(Card(type: type.reverse, color: color.yellow))
        cards.append(Card(type: type.draw2, color: color.yellow))
        cards.append(Card(type: type.draw2, color: color.yellow))
        
        //25 red cards
        cards.append(Card(type: type.zero, color: color.red))
        cards.append(Card(type: type.one, color: color.red))
        cards.append(Card(type: type.one, color: color.red))
        cards.append(Card(type: type.two, color: color.red))
        cards.append(Card(type: type.two, color: color.red))
        cards.append(Card(type: type.three, color: color.red))
        cards.append(Card(type: type.three, color: color.red))
        cards.append(Card(type: type.four, color: color.red))
        cards.append(Card(type: type.four, color: color.red))
        cards.append(Card(type: type.five, color: color.red))
        cards.append(Card(type: type.five, color: color.red))
        cards.append(Card(type: type.six, color: color.red))
        cards.append(Card(type: type.six, color: color.red))
        cards.append(Card(type: type.seven, color: color.red))
        cards.append(Card(type: type.seven, color: color.red))
        cards.append(Card(type: type.eight, color: color.red))
        cards.append(Card(type: type.eight, color: color.red))
        cards.append(Card(type: type.nine, color: color.red))
        cards.append(Card(type: type.nine, color: color.red))
        cards.append(Card(type: type.skip, color: color.red))
        cards.append(Card(type: type.skip, color: color.red))
        cards.append(Card(type: type.reverse, color: color.red))
        cards.append(Card(type: type.reverse, color: color.red))
        cards.append(Card(type: type.draw2, color: color.red))
        cards.append(Card(type: type.draw2, color: color.red))
        
        //4 wild cards
        cards.append(Card(type: type.wild, color: color.any))
        cards.append(Card(type: type.wild, color: color.any))
        cards.append(Card(type: type.wild, color: color.any))
        cards.append(Card(type: type.wild, color: color.any))
        
        //4 wildDraw4 cards
        cards.append(Card(type: type.wildDraw4, color: color.any))
        cards.append(Card(type: type.wildDraw4, color: color.any))
        cards.append(Card(type: type.wildDraw4, color: color.any))
        cards.append(Card(type: type.wildDraw4, color: color.any))
    }
    
    func shuffle(){
        cards.shuffle()
    }
    
    func draw() -> Card{
        return cards.remove(at: 0)
    }
}
