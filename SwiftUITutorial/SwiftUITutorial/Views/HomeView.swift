//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by eleonora elefante on 23/03/2020.
//  Copyright © 2020 eleonora elefante. All rights reserved.
//

import SwiftUI

struct HomeView: View {
// dictionary: string as key and drinks as value
    var categories:[String:[Drink]] {
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
       
        NavigationView {
            List (categories.keys.sorted(), id: \String.self) { key in
                
                DrinkRow(catergoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
            }
        .navigationBarTitle(Text("COFFEE DB"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
