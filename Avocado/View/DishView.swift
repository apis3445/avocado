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
            Image(dish.icon)
                .resizable()
                .modifier(IconModifier())
            Spacer()
            Text(dish.name)
        }
        
        Divider()
    }
}

struct DishView_Previews: PreviewProvider {
    static var previews: some View {
        DishView(dish: dishData[1])
            .previewLayout(.sizeThatFits)
    }
}
