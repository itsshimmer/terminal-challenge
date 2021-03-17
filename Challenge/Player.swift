//
//  Player.swift
//  Challenge
//
//  Created by Lucas Dimer Justo on 16/03/21.
//

import Foundation

class Player {
    var hand: [Card]
    let name: String
    var chosen: Int
    init (name: String){
        self.hand = [Card]()
        self.name = name
        self.chosen = -1
    }
    
    func play(card: Card) -> Card {
        var chosenCard: Card
        repeat{
            chosenCard = self.selectCard()
            if !Game.isCardValid(playerCard: chosenCard, tableCard: card) {
                print("please choose another card, this one is invalid!")
                self.hand.insert(chosenCard, at: chosen)
            }
        }while !Game.isCardValid(playerCard: chosenCard, tableCard: card)
        
        return chosenCard
    }
    
    func selectCard() -> Card {
        return self.hand.remove(at: intInput(message: "\(self.name) please select a card!", beginIndex: 0, endIndex: self.hand.count-1))
    }
    
    func chooseColor() -> Color {
        let chosenColor: Int = intInput(message: "choose a color: 1-🔵(blue);  2-🟡(yellow);  3-🟢(green);  4-🔴(red)", beginIndex: 1, endIndex: 4)
        switch chosenColor {
        case 1: return Color.blue
            
        case 2: return Color.yellow
            
        case 3: return Color.green
            
        case 4: return Color.red
            
        default: return Color.any //never reach this line
        }
    }
    
    func intInput(message: String, beginIndex: Int, endIndex: Int) -> Int {
        chosen = -1
        var chosenString: String
        repeat {
            print(message)
            self.printHand()
            chosenString = readLine()!
            if let chosenValid = Int(chosenString) {
                chosen = chosenValid
            }
            else {
                print("You must input an Integer value!")
            }
            
        } while !(chosen >= beginIndex && chosen <= endIndex)
        return chosen
    }
    
    func printHand() {
        for i in 0...self.hand.count-1 {
            print("index[\(i)]: [\(self.hand[i])]",terminator: "   ")
        }
        print("\n")
    }
    
}
