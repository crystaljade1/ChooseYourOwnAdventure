//
//  Person.swift
//  ChooseYourOwnAdventure
//
//  Created by Crystal Jade Allen-Washington on 5/2/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation

class Person : CustomStringConvertible {
    let firstName: String
    let capetownName: String
    var trueName: String {
        return "\(capetownName) f.k.a. \(firstName)"
    }
    
    init(capetownName: String, firstName: String) {
        self.firstName = firstName
        self.capetownName = capetownName
    }
    
    var description: String {
        return trueName
    }
}
