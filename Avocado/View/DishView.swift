//
//  DishView.swift
//  Avocado
//
//  Created by Abigail Armijo Hernández on 18/05/24.
//

import SwiftUI

struct DishView: View {
    var dish: Dish
    
    var body: some View {
        HStack {
            HStack {
                Image(dish.icon)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(Color("ColorGreenDark"))
                    .modifier(IconModifier())
                    
                Text(dish.name)
                    .foregroundColor(Color("ColorGreenDark"))
            }
        }
        
        Divider()
            .overlay(Color("ColorGreenLight"))
    }
}

struct DishView_Previews: PreviewProvider {
    static var previews: some View {
        DishView(dish: dishData[1])
            .previewLayout(.sizeThatFits)
    }
}
