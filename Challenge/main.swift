//
//  main.swift
//  Challenge
//
//  Created by João Brentano on 16/03/21.
//

import Foundation

func addPlayer(){
    let chosen: Int = intInput(message: "Do you want to add a new player ? 1- 👍(yes); 2- 👎(no)", beginIndex: 1, endIndex: 2)
    if chosen==1 {
        print("Choose the player's name: ")
        players.append(Player(name: readLine()!))
    }
    if chosen==2 {
        if players.count < 2 {
            print("You can't play with less than 2 players 😢! Finishing the game...")
            exit(0)
        }
        stop=true
    }
}

func intInput(message: String, beginIndex: Int, endIndex: Int) -> Int {
    var chosen: Int = -1
    var chosenString: String
    repeat {
        print(message)
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

var stop: Bool = false
var players: [Player] = [Player]()

while !stop {
    addPlayer()
}

var game: Game = Game(players: players)

game.play()

