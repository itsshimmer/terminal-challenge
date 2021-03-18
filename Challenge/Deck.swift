//
//  Deck.swift
//  Challenge
//
//  Created by Lucas Dimer Justo on 16/03/21.
//


class Deck {
    var cards: [Card]
    
    init (){
        cards = [Card]()
        addCards()
    }
    
    func shuffle(){
        cards.shuffle()
    }
    
    func addCards(){
        //25 blue cards
        cards.append(Card(type: Type.zero, color: Color.blue))
        cards.append(Card(type: Type.one, color: Color.blue))
        cards.append(Card(type: Type.one, color: Color.blue))
        cards.append(Card(type: Type.two, color: Color.blue))
        cards.append(Card(type: Type.two, color: Color.blue))
        cards.append(Card(type: Type.three, color: Color.blue))
        cards.append(Card(type: Type.three, color: Color.blue))
        cards.append(Card(type: Type.four, color: Color.blue))
        cards.append(Card(type: Type.four, color: Color.blue))
        cards.append(Card(type: Type.five, color: Color.blue))
        cards.append(Card(type: Type.five, color: Color.blue))
        cards.append(Card(type: Type.six, color: Color.blue))
        cards.append(Card(type: Type.six, color: Color.blue))
        cards.append(Card(type: Type.seven, color: Color.blue))
        cards.append(Card(type: Type.seven, color: Color.blue))
        cards.append(Card(type: Type.eight, color: Color.blue))
        cards.append(Card(type: Type.eight, color: Color.blue))
        cards.append(Card(type: Type.nine, color: Color.blue))
        cards.append(Card(type: Type.nine, color: Color.blue))
        cards.append(Card(type: Type.skip, color: Color.blue))
        cards.append(Card(type: Type.skip, color: Color.blue))
        cards.append(Card(type: Type.reverse, color: Color.blue))
        cards.append(Card(type: Type.reverse, color: Color.blue))
        cards.append(Card(type: Type.draw2, color: Color.blue))
        cards.append(Card(type: Type.draw2, color: Color.blue))
        
        //25 green cards
        cards.append(Card(type: Type.zero, color: Color.green))
        cards.append(Card(type: Type.one, color: Color.green))
        cards.append(Card(type: Type.one, color: Color.green))
        cards.append(Card(type: Type.two, color: Color.green))
        cards.append(Card(type: Type.two, color: Color.green))
        cards.append(Card(type: Type.three, color: Color.green))
        cards.append(Card(type: Type.three, color: Color.green))
        cards.append(Card(type: Type.four, color: Color.green))
        cards.append(Card(type: Type.four, color: Color.green))
        cards.append(Card(type: Type.five, color: Color.green))
        cards.append(Card(type: Type.five, color: Color.green))
        cards.append(Card(type: Type.six, color: Color.green))
        cards.append(Card(type: Type.six, color: Color.green))
        cards.append(Card(type: Type.seven, color: Color.green))
        cards.append(Card(type: Type.seven, color: Color.green))
        cards.append(Card(type: Type.eight, color: Color.green))
        cards.append(Card(type: Type.eight, color: Color.green))
        cards.append(Card(type: Type.nine, color: Color.green))
        cards.append(Card(type: Type.nine, color: Color.green))
        cards.append(Card(type: Type.skip, color: Color.green))
        cards.append(Card(type: Type.skip, color: Color.green))
        cards.append(Card(type: Type.reverse, color: Color.green))
        cards.append(Card(type: Type.reverse, color: Color.green))
        cards.append(Card(type: Type.draw2, color: Color.green))
        cards.append(Card(type: Type.draw2, color: Color.green))
        
        //25 yellow cards
        cards.append(Card(type: Type.zero, color: Color.yellow))
        cards.append(Card(type: Type.one, color: Color.yellow))
        cards.append(Card(type: Type.one, color: Color.yellow))
        cards.append(Card(type: Type.two, color: Color.yellow))
        cards.append(Card(type: Type.two, color: Color.yellow))
        cards.append(Card(type: Type.three, color: Color.yellow))
        cards.append(Card(type: Type.three, color: Color.yellow))
        cards.append(Card(type: Type.four, color: Color.yellow))
        cards.append(Card(type: Type.four, color: Color.yellow))
        cards.append(Card(type: Type.five, color: Color.yellow))
        cards.append(Card(type: Type.five, color: Color.yellow))
        cards.append(Card(type: Type.six, color: Color.yellow))
        cards.append(Card(type: Type.six, color: Color.yellow))
        cards.append(Card(type: Type.seven, color: Color.yellow))
        cards.append(Card(type: Type.seven, color: Color.yellow))
        cards.append(Card(type: Type.eight, color: Color.yellow))
        cards.append(Card(type: Type.eight, color: Color.yellow))
        cards.append(Card(type: Type.nine, color: Color.yellow))
        cards.append(Card(type: Type.nine, color: Color.yellow))
        cards.append(Card(type: Type.skip, color: Color.yellow))
        cards.append(Card(type: Type.skip, color: Color.yellow))
        cards.append(Card(type: Type.reverse, color: Color.yellow))
        cards.append(Card(type: Type.reverse, color: Color.yellow))
        cards.append(Card(type: Type.draw2, color: Color.yellow))
        cards.append(Card(type: Type.draw2, color: Color.yellow))
        
        //25 red cards
        cards.append(Card(type: Type.zero, color: Color.red))
        cards.append(Card(type: Type.one, color: Color.red))
        cards.append(Card(type: Type.one, color: Color.red))
        cards.append(Card(type: Type.two, color: Color.red))
        cards.append(Card(type: Type.two, color: Color.red))
        cards.append(Card(type: Type.three, color: Color.red))
        cards.append(Card(type: Type.three, color: Color.red))
        cards.append(Card(type: Type.four, color: Color.red))
        cards.append(Card(type: Type.four, color: Color.red))
        cards.append(Card(type: Type.five, color: Color.red))
        cards.append(Card(type: Type.five, color: Color.red))
        cards.append(Card(type: Type.six, color: Color.red))
        cards.append(Card(type: Type.six, color: Color.red))
        cards.append(Card(type: Type.seven, color: Color.red))
        cards.append(Card(type: Type.seven, color: Color.red))
        cards.append(Card(type: Type.eight, color: Color.red))
        cards.append(Card(type: Type.eight, color: Color.red))
        cards.append(Card(type: Type.nine, color: Color.red))
        cards.append(Card(type: Type.nine, color: Color.red))
        cards.append(Card(type: Type.skip, color: Color.red))
        cards.append(Card(type: Type.skip, color: Color.red))
        cards.append(Card(type: Type.reverse, color: Color.red))
        cards.append(Card(type: Type.reverse, color: Color.red))
        cards.append(Card(type: Type.draw2, color: Color.red))
        cards.append(Card(type: Type.draw2, color: Color.red))
        
        //4 wild cards
        cards.append(Card(type: Type.wild, color: Color.any))
        cards.append(Card(type: Type.wild, color: Color.any))
        cards.append(Card(type: Type.wild, color: Color.any))
        cards.append(Card(type: Type.wild, color: Color.any))
        
        //4 wildDraw4 cards
        cards.append(Card(type: Type.wildDraw4, color: Color.any))
        cards.append(Card(type: Type.wildDraw4, color: Color.any))
        cards.append(Card(type: Type.wildDraw4, color: Color.any))
        cards.append(Card(type: Type.wildDraw4, color: Color.any))
    }
    
    func draw() -> Card{
        if cards.count > 0 {
            return cards.remove(at: 0)
        }
        else {
            self.cards = [Card]()
            addCards()
            self.shuffle()
            return cards.remove(at:0)
        }
    }
    
    func drawFirstCard() -> Card {
        for card in cards {
            if card.type != Type.wild && card.type != Type.wildDraw4 && card.type != Type.skip && card.type != Type.reverse && card.type != Type.draw2 {
                return card
            }
        }
        return Card(type: Type.one, color: Color.blue) //never reach this line
    }
}
