//
//  UserInputUtilities.swift
//  ChooseYourOwnAdventure
//
//  Created by Crystal Jade Allen-Washington on 5/2/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation


print("Greetings, Earthling! Welcome to Capetown, a Paladin Paradise.")

let firstName = getStringFromUser(prompt: "What is your name?", failureMessage: "Your name is sort of a big deal. Can't enter Capetown without it.", allowEmptyString: false)

print("Thanks \(firstName)! Here in Capetown, you can create your own name. Choose a good one - you won't be able to change it later.")

let capetownName = getStringFromUser(prompt: "So, what shall we call you?", failureMessage: "Everybody superhero needs a name. Please create one.", allowEmptyString: false)

let person = Person(capetownName: capetownName, firstName: firstName)

print("Nice choice, \(capetownName). Welcome to Capetown.")
print("Here in Capetown, everybody has a superhero power.")

choosePowerScene()







