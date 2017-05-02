//
//  UserInputUtilities.swift
//  ChooseYourOwnAdventure
//
//  Created by Crystal Jade Allen-Washington on 5/2/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation


func getStringFromUser(prompt optionalPrompt: String?, failureMessage: String, allowEmptyString: Bool = false) -> String {
    
    let emptyCheck: (String) -> Bool = { input in
        allowEmptyString || (input.isEmpty == false)
    }
    return getStringFromUser(prompt: optionalPrompt,
                             failureMessage: failureMessage,
                             predicate: emptyCheck)
}


func getStringFromUser(prompt optionalPrompt: String?, failureMessage: String, predicate: (String) -> Bool) -> String {
    var optionalValue: String? = nil
    
    while optionalValue == nil {
        if let prompt = optionalPrompt {
            print(prompt)
        }
        
        optionalValue = readLine(strippingNewline: true)
        
        if let value = optionalValue {
            if predicate(value) {
                return value
            } else {
                print(failureMessage)
                optionalValue = nil
            }
        }
    }
    
    fatalError("Sorry, try again.")
}



func getIntFromUser(prompt: String?, failureMessage: String, predicate: (Int) -> Bool) -> Int {
    
    var integer: Int? = nil
    
    while integer == nil {
        if let thePrompt = prompt {
            print(thePrompt)
        }
        integer = Int(getStringFromUser(prompt: nil, failureMessage: failureMessage))
        
        if let unwrapped = integer,
            predicate(unwrapped) {
            return unwrapped
        } else {
            print(failureMessage)
            integer = nil
        }
    }
    
    fatalError("Sorry, try again.")
}


func getChoiceFromUser(prompt: String, choices: [String]) -> String {
    
    
    guard choices.isEmpty == false else {
        fatalError("Sorry, gotta make a choice.")
    }
    
    let count = choices.count
    guard count > 1 else {
        return choices.first!
    }
    
    var index = 1
    var newPrompt = prompt
    for choice in choices {
        newPrompt.append("    Enter \(index) for \(choice)\n")
        index += 1
    }
    
    print(newPrompt)
    let selectedIndex: Int = getIntFromUser(prompt: nil,
                                            failureMessage: newPrompt,
                                            predicate: { input in
                                                (input >= 1) && (input <= count)
    })
    
    return choices[selectedIndex - 1]
    
}


typealias ChoiceOfPower = [String]



let choiceOfPower: ChoiceOfPower = [
    "Mindreader",
    "Time Traveler",
    "Vanisher (go invisible)"
]






