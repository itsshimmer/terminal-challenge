//
//  Game.swift
//  Challenge
//
//  Created by Lucas Dimer Justo on 16/03/21.
//

import AVFoundation

class Game {
    var deck: Deck
    var players: [Player]
    var lastCardPlayed: Card
    var currentPlayer: Player
    var winner: Player?
    let delay: Bool
    
    init(players: [Player], delay: Bool){
        self.deck = Deck()
        self.players = players
        self.delay = delay
        
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
        if self.delay {
            print("The game will take 10 seconds to initialize, so you have time to read this and then know that we take 2 seconds before showing a player's hand, to give time for other players look away (because you shouldn't see each others hands)")
            sleep(10)
        }
        while(!checkZeroCards()){
            print("TABLE INFORMATIONS:")
            for player in players{
                print("\(player.name) has \(player.hand.count) cards;", terminator: "   ")
            }
            print()
            print("LAST CARD PLAYED: \(lastCardPlayed)")
            print("----------------------------------------------------------------------------------------------------")
            let chosenCard: Card = currentPlayer.play(card: lastCardPlayed)
            if chosenCard.type == Type.none {
                //if type is none, player decided to draw a card and pass its turn
                currentPlayer.hand.append(self.deck.draw())
                players.append(currentPlayer)
                currentPlayer = players.remove(at: 0)
            }
            else {
                lastCardPlayed = chosenCard
                switch lastCardPlayed.type {
                    case Type.draw2:
                        //update player for making next player draw 2 cards
                        players.append(currentPlayer)
                        currentPlayer = players.remove(at: 0)
                        //next player drawing 2 cards
                        currentPlayer.hand.append(self.deck.draw())
                        currentPlayer.hand.append(self.deck.draw())
                        //funny speech interaction
                        funnySpeech(string: "Hey \(players[players.count-1].name) you received a message from \(currentPlayer.name)", pitch: 1, rate: 0.5, delay: 0)
                        funnySpeech(string: "I hate you, and want you to know that we will never never ever play together again!", pitch: 0.1, rate: 0.3, delay: 3)
                        //skiping the player who drawed 2 cards
                        players.append(currentPlayer)
                        currentPlayer = players.remove(at: 0)
                    case Type.skip:
                        //assigning next player
                        players.append(currentPlayer)
                        currentPlayer = players.remove(at: 0)
                        funnySpeech(string: "Hey \(players[players.count-1].name) you received a message from \(currentPlayer.name)", pitch: 1, rate: 0.5, delay: 0)
                        funnySpeech(string: "Why do you have to bully me?", pitch: 0.1, rate: 0.5, delay: 3)
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
                        //funny speech interaction
                        funnySpeech(string: "Hey \(players[players.count-1].name) you received a message from \(currentPlayer.name)", pitch: 1, rate: 0.5, delay: 0)
                        funnySpeech(string: "I hate you, and want you to know that we will never never ever play together again!", pitch: 0.1, rate: 0.3, delay: 3)
                        //skip the player who drawed 4 cards
                        players.append(currentPlayer)
                        currentPlayer = players.remove(at: 0)
                    case Type.reverse:
                        //reversing players order of playing
                        players.reverse()
                        //adding the player who played the card as last player (because he was removed)
                        players.append(currentPlayer)
                        //setting next player based on new order
                        if players.count == 2 {
                            //if it has only 2 players, it acts like a skip (and current player is at position 1).
                            currentPlayer = players.remove(at: 1)
                        }
                        else {
                            currentPlayer = players.remove(at: 0)
                        }
                        
                    default:
                        //default is when the card played isn't an action card, so just set next player
                        players.append(currentPlayer)
                        currentPlayer = players.remove(at: 0)
                }
            }
            print("----------------------------------------------------------------------------------------------------")
            print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
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
    
    func funnySpeech(string: String, pitch: Float, rate: Float, delay: UInt32){
        let utterance = AVSpeechUtterance(string: string)

        // Configure the utterance.
        utterance.rate = rate
        utterance.pitchMultiplier = pitch
        utterance.postUtteranceDelay = 0.5
        utterance.volume = 0.8

        // Retrieve the British English voice.
        let voice = AVSpeechSynthesisVoice(language: "en-US")

        // Assign the voice to the utterance.
        utterance.voice = voice
        
        // Create a speech synthesizer.
        let synthesizer = AVSpeechSynthesizer()
        sleep(delay)
        // Tell the synthesizer to speak the utterance.
        synthesizer.speak(utterance)
    }
}
