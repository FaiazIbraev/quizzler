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
    
    var title: String{
        switch self{
        case .one:
            return "Is sky blue?"
        case .two:
            return "Are u sleeping?"
        case .three:
            return "Are u blond?"
            
        }
    }
    
    var answer: String{
        switch self{
        case .one:
            return "yes"
        case .two:
            return "no"
        case .three:
            return "no"
    }
    }
    
    
}

