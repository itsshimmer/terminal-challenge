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
    
        self.currentPlayer = self.players.remove(at: 0)
        
        for _ in 1...7 {
            for player in players {
                player.hand.append(deck.draw())
            }
        }
        lastCardPlayed = self.deck.drawFirstCard()
    }
    
    func play(){
        while(!checkZeroCards()){
            print("LAST CARD PLAYED: \(lastCardPlayed)")
            lastCardPlayed = currentPlayer.play(card: lastCardPlayed)
            switch lastCardPlayed.type {
                case Type.draw2:
                    //update player for making next player draw 2 cards
                    players.append(currentPlayer)
                    currentPlayer = players.remove(at: 0)
                    //next player drawing 2 cards
                    currentPlayer.hand.append(self.deck.draw())
                    currentPlayer.hand.append(self.deck.draw())
                    //skiping the player who drawed 2 cards
                    players.append(currentPlayer)
                    currentPlayer = players.remove(at: 0)
                case Type.skip:
                    //assigning next player
                    players.append(currentPlayer)
                    currentPlayer = players.remove(at: 0)
                    //skipping next player by assigning a new one
                    players.append(currentPlayer)
                    currentPlayer = players.remove(at: 0)
                case Type.wild:
                    //current player chooses a color
                    lastCardPlayed.color = currentPlayer.chooseColor()
                    //setting next player
                    players.append(currentPlayer)
                    currentPlayer = players.remove(at: 0)
                case Type.wildDraw4:
                    //current player chooses a color
                    lastCardPlayed.color = currentPlayer.chooseColor()
                    //update player for making next player draw 4 cards
                    players.append(currentPlayer)
                    currentPlayer = players.remove(at: 0)
                    //next player drawing 4 cards
                    currentPlayer.hand.append(self.deck.draw())
                    currentPlayer.hand.append(self.deck.draw())
                    currentPlayer.hand.append(self.deck.draw())
                    currentPlayer.hand.append(self.deck.draw())
                    //skip the player who drawed 4 cards
                    players.append(currentPlayer)
                    currentPlayer = players.remove(at: 0)
                case Type.reverse:
                    //reversing players order of playing
                    players.reverse()
                    //adding the player who played the card as last player (because he was removed)
                    players.append(currentPlayer)
                    //setting next player based on new order
                    currentPlayer = players.remove(at: 0)
                    
                default:
                    //default is when the card played isn't an action card, so just set next player
                    players.append(currentPlayer)
                    currentPlayer = players.remove(at: 0)
            }
            print("----------------------------------------------------------------------------------------------------")
        }
        for player in self.players {
            if player.hand.count==0 {
                print("Congratulations \(player.name), you won!")
            }
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
