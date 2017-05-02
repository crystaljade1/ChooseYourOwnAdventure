//
//  Game.swift
//  ChooseYourOwnAdventure
//
//  Created by Crystal Jade Allen-Washington on 5/2/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation

class Game {
    
    class Powers: Game, CustomStringConvertible {
        
        
        struct NumberChoice {
            var one: Int = 1
            var two: Int = 2
            var three: Int = 3
        }
        
        var powers: Powers
        
        init(powers: Powers) {
            self.powers = powers
        }
        
        var description: String {
            return "one, two, three"
        }
        
                
    }
}
