//
//  Card.swift
//  Challenge
//
//  Created by Lucas Dimer Justo on 16/03/21.
//

import Foundation

enum Color: String {
    case blue, yellow, green, red, any //any=wild
}

enum Type: String {
    case zero, one, two, three, four, five, six, seven, eight, nine, wild, reverse, skip, draw2, wildDraw4
}

class Card: CustomStringConvertible {
    var description: String {
        "type: \(type.rawValue)   color: \(color.rawValue)"
    }
    
    var type: Type
    var color: Color
    
    init(type: Type, color: Color) {
        self.type = type
        self.color = color
    }
    
    
}
