//
//  Game.swift
//  Challenge
//
//  Created by Lucas Dimer Justo on 16/03/21.
//

import Foundation

class Game {
    var deck: Deck
    var players: [Player]
    var lastCardPlayed: Card
    var currentPlayer: Player
    var winner: Player?
    
    init(players: [Player]){
        self.deck = Deck()
        self.players = players
        
        self.deck.shuffle()
        self.players.shuffle()
        
        lastCardPlayed = self.deck.draw()
        self.currentPlayer = self.players.remove(at: 0)
        
        for _ in 1...7 {
            for player in players {
                player.hand.append(deck.draw())
            }
        }
    }
    
    func play(){
        while(checkZeroCards()){
            print("Last card played: \(lastCardPlayed)")
            lastCardPlayed = currentPlayer.play(card: lastCardPlayed)
            switch lastCardPlayed.type {
            case Type.draw2:
                players.append(currentPlayer)
                currentPlayer = players.remove(at: 0)
                currentPlayer.hand.append(self.deck.draw())
                currentPlayer.hand.append(self.deck.draw())
            case Type.skip:
                players.append(currentPlayer)
                currentPlayer = players.remove(at: 0)
                players.append(currentPlayer)
                currentPlayer = players.remove(at: 0)
            case Type.wild:
                lastCardPlayed.color = currentPlayer.chooseColor()
                players.append(currentPlayer)
                currentPlayer = players.remove(at: 0)
            case Type.wildDraw4:
                lastCardPlayed.color = currentPlayer.chooseColor()
                players.append(currentPlayer)
                currentPlayer = players.remove(at: 0)
                currentPlayer.hand.append(self.deck.draw())
                currentPlayer.hand.append(self.deck.draw())
                currentPlayer.hand.append(self.deck.draw())
                currentPlayer.hand.append(self.deck.draw())
            case Type.reverse:
                players.reverse()
                players.append(currentPlayer)
                currentPlayer = players.remove(at: 0)
                
            default:
                players.append(currentPlayer)
                currentPlayer = players.remove(at: 0)
            }
            print("----------------------------------------------------------------------------------------------------")
            
        }
    }
    
    func checkZeroCards() -> Bool {
        for player in players {
            if player.hand.count==0 {
                winner = player
                return true
            }
        }
        
        return false
    }
    
    static func isCardValid(playerCard: Card, tableCard: Card) -> Bool{
        return playerCard.type == tableCard.type || playerCard.color == tableCard.color || playerCard.color == Color.any //any = wild or wilddraw4
    }
}
