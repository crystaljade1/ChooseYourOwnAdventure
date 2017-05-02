//
//  Scenes.swift
//  ChooseYourOwnAdventure
//
//  Created by Crystal Jade Allen-Washington on 5/2/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation


func choosePowerScene() {
    let powerChoice = getChoiceFromUser(prompt: "What will your superhere power be, \(capetownName)?\n",
        
        choices: ["Mindreader",
                  "Time Traveler",
                  "Vanisher (go invisible)"])
    switch powerChoice {
    case "Mindreader":
        return mindreaderScene1()
    case "Time Traveler":
        return timeTravelerScene1()
    case "Vanisher (go invisible)":
        return vanisherScene1()
    default:
        print("Here in Capetown, everybody has a damn superhero power, we said.\n")
    }
}



func mindreaderScene1() {
    let doorChoice = getChoiceFromUser(prompt: "A mindreader, eh? A good choice, indeed. You'll know all the secrets, you'll have all the keys. Knowing everyone's next move may at first seem delightful, but you'll later find out it only gets frightful. Choose a door.\n",
                                       
                                       choices: ["Purple Door",
                                                 "Teal Door"])
    
    let goodnightCapetown = "Sorry, something's come up and we need all the heroes in Capetown in formation. Hate it had to end so soon. Bye ashy."
    
    let byeAsshole = "Pulling disappearing acts will now be your specialty - enjoy, asshole."
    
    switch doorChoice {
    case "Purple Door":
        return mindreaderScene2()
    case "Teal Door":
        print(goodnightCapetown)
    default:
        print(byeAsshole)
    }
}

func mindreaderScene2() {
    let getAccess = getChoiceFromUser(prompt: "Welcome to the Metropolis, where you'll practice your mindreading skills and push your talents to the limit. You'll be surrounded by all kinds of people here, so it's important to just try to tune out the voices. Where should we start?\n",
                                      
                                      choices: ["Quaint coffeeshop",
                                                "I'd rather not"])
    
    let goodnightCapetown = "Sorry, something's come up and we need all the heroes in Capetown in formation. Hate it had to end so soon. Bye ashy."
    
    let byeAsshole = "Pulling disappearing acts will now be your specialty - enjoy, asshole."
    
    switch getAccess {
    case "Quaint coffeeshop":
        print(goodnightCapetown)
    case "Barbershop":
        print(byeAsshole)
    default:
        print(byeAsshole)
    }
}


func timeTravelerScene1() {
    let timePeriod = getChoiceFromUser(prompt: "Ah, a time traveler suits you. Do your best to enjoy the sights, traveling from the mornings of yesterday to tomorrow's nights. Ask the right questions, but don't get stuck in a bubble. The sights will leave you breathless, but forgetting the present can be trouble. Choose a time period.\n",
                                       
                                       choices: ["50s",
                                                 "70s",
                                                 "90s"])
    
    switch timePeriod {
    case "50s":
        return timeTravelerScene2()
    case "70s":
        return timeTravelerScene2()
    case "90s":
        print("Sorry, this part of CapeTown hasn't been built yet. We're still trying to dig our way through all the drama and scandal. Check us later.")
    default:
        print("You're out of Capetown bounds.")
    }
}

func timeTravelerScene2() {
    let choiceToContinue = getChoiceFromUser(prompt: "The war is over and America is celebrating. You're moving out to the suburbs to have more space for your growing family - sorry, we didn't really give you the option for one. Still like us?\n",
                                             choices: ["Sure",
                                                       "Nah I'm over this."])
    
    let goodnightCapetown = "Sorry, something's come up and we need all the heroes in Capetown in formation. Hate it had to end so soon. Bye ashy."
    
    let byeAsshole = "Pulling disappearing acts will now be your specialty - enjoy, asshole."
    
    
    switch choiceToContinue {
    case "Sure":
        print(goodnightCapetown)
    default:
        print(byeAsshole)
    }
}


func vanisherScene1() {
    let awkwardSituation = getChoiceFromUser(prompt: "So, you're at a restaurant having dinner. The food's great, the wine's good, but something just isn't right. You look up to see a man and a woman staring at you from across the room - you know their faces, but you can't quite remember how. You ponder it for a short time before the waiter returns. He's visibly shaken - his face is flush and his hands are clammy and tight. As he inches closer, you remember your magic. Do you: \n",
                                             choices: ["Get the hell out of dodge",
                                                       "Wait for the waiter to walk up and ask "])
    
    let goodnightCapetown = "Sorry, something's come up and we need all the heroes in Capetown in formation. Hate it had to end so soon. Bye ashy."
    
    let byeAsshole = "Pulling disappearing acts will now be your specialty - enjoy, asshole."
    
    
    switch awkwardSituation {
    case "Get the hell out of dodge":
        print(goodnightCapetown)
    case "Wait for the water to walk up and ask what's wrong":
        print(byeAsshole)
    default:
        print(byeAsshole)
    }
}


