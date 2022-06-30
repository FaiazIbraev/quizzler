//
//  questions.swift
//  quizzler
//
//  Created by Student on 25/6/22.
//

import Foundation
enum Question{
    case one
    case two
    case three
    case four
    case five
    
    var title: String{
        switch self{
        case .one:
            return "Небо голубое?"
        case .two:
            return "Трава зеленая?"
        case .three:
            return "Вы учитесь на python?"
        case .four:
            return "5*5=25?"
        case .five:
            return "1*5=6?"
        }
    }
    
    var answer: String{
        switch self{
        case .one:
            return "yes"
        case .two:
            return "yes"
        case .three:
            return "no"
        case .four:
            return "yes"
        case .five:
            return "no"
    }
    }
    
    
}

