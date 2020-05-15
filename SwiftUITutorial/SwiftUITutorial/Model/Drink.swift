//
//  Drink.swift
//  SwiftUITutorial
//
//  Created by eleonora elefante on 23/03/2020.
//  Copyright © 2020 eleonora elefante. All rights reserved.
//

import SwiftUI

//identifiable to display things in a list
//codabke to be able to amp our json into our model here
//hashable for a very effecient categorization process

struct Drink: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Catergory
    var description: String
    
    enum Catergory: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
    
    
}
