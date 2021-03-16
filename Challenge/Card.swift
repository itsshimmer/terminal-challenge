//
//  Card.swift
//  Challenge
//
//  Created by Lucas Dimer Justo on 16/03/21.
//

import Foundation

enum color {
    case blue, yellow, green, red, any //any=wild
}

enum type {
    case zero, one, two, three, four, five, six, seven, eight, nine, wild, reverse, skip, draw2, wildDraw4
}

class Card {
    var type: type
    var color: color
    
    init(type: type, color: color) {
        self.type = type
        self.color = color
    }
}
