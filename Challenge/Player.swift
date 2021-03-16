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
    
    init (name: String, hand: [Card]){
        self.hand = hand
        self.name = name
    }
    
    func play(card: Card) -> Card {
        print("Your hand: \(self.hand)")
        var chosenCard: Card
        repeat{
            chosenCard = self.selectCard()
        }while !Game.isCardValid(card: chosenCard, card2: card)
        
        return chosenCard
    }
    
    func selectCard() -> Card {
        print("Select a card (0 is your first card...\(hand.count-1) is your last card.")
        var chosen: Int = -1
        var chosenString: String
        
        repeat {
            do{
                chosenString = readLine()!
                chosen = try Int(chosenString)!
            }
            catch {
                print("You must input an Integer value!")
            }
        } while chosen < 0 || chosen >= hand.count
        
        return self.hand.remove(at: chosen)
    }
    
    func chooseColor() -> color {
        
    }
    
}
