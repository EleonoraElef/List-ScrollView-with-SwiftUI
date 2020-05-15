//
//  DrinkRow.swift
//  SwiftUITutorial
//
//  Created by eleonora elefante on 23/03/2020.
//  Copyright © 2020 eleonora elefante. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var catergoryName:String
    var drinks:[Drink]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(self.catergoryName)
                .font(.title)
            
            ScrollView(showsIndicators: false) {
    //  to make the scroll view horizontal
                HStack(alignment: .top) {
                ForEach(self.drinks, id: \.name) { drink in
                    
                    NavigationLink(destination:DrinkDetail(drink: drink)) {
                        
                        DrinkItem(drink: drink)
                        .frame(width: 300)
                            .padding(.trailing, 30)
                        
                        
                    }
                  }
                }
            }
        }
    }
}


struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(catergoryName: "HOT DRINKS", drinks: drinkData)
    }
}
