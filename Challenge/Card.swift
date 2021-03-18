//
//  Card.swift
//  Challenge
//
//  Created by Lucas Dimer Justo on 16/03/21.
//

import Foundation

enum Color: String {
    case blue, yellow, green, red, any //any=wild
    
    var emojiSymbol: String {
        switch self {
            case .blue: return "🔵"
            case .yellow: return "🟡"
            case .green: return "🟢"
            case .red: return "🔴"
            case .any: return "🌈"
            
        }
    }
}

enum Type: String {
    case zero, one, two, three, four, five, six, seven, eight, nine, wild, reverse, skip, draw2, wildDraw4, none
    
    var emojiSymbol: String {
        switch self {
            case .zero: return "0️⃣"
            case .one: return "1️⃣"
            case .two: return "2️⃣"
            case .three: return "3️⃣"
            case .four: return "4️⃣"
            case .five: return "5️⃣"
            case .six: return "6️⃣"
            case .seven: return "7️⃣"
            case .eight: return "8️⃣"
            case .nine: return "9️⃣"
            case .wild: return "🌈(wild)"
            case .reverse: return "↩️(reverse)"
            case .skip: return "🚫(skip)"
            case .draw2: return "➕2️⃣(+2)"
            case .wildDraw4: return "➕4️⃣(+4)"
            case .none: return "none"//
        }
    }
}

class Card: CustomStringConvertible {
    var description: String {
        "\(type.emojiSymbol) \(color.emojiSymbol)"
    }
    
    var type: Type
    var color: Color
    
    init(type: Type, color: Color) {
        self.type = type
        self.color = color
    }
    
    
}
