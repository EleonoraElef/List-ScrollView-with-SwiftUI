//
//  DrinkItem.swift
//  SwiftUITutorial
//
//  Created by eleonora elefante on 23/03/2020.
//  Copyright © 2020 eleonora elefante. All rights reserved.
//

import SwiftUI

struct DrinkItem: View {
    
    var drink: Drink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
        Image(drink.imageName)
//    if you want to make it as a card
        .resizable()
//    to make sure that we can always display our content
        .renderingMode(.original)
        .aspectRatio(contentMode: .fill)
        .frame(width: 300, height: 170)
        .cornerRadius(10)
        .shadow(radius: 10)
       
            VStack(alignment: .leading, spacing: 5.0) {
                Text(drink.name)
                .foregroundColor(.primary)
                .font(.headline)
                Text(drink.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            .multilineTextAlignment(.leading)
                .lineLimit(2)
                    .frame(height: 40)
               
            }
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
