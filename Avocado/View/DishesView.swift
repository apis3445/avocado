//
//  DishesView.swift
//  Avocado
//
//  Created by Adriancys Jesus Villegas Toro on 4/10/23.
//

import SwiftUI

struct DishesView: View {
    var dishes: [Dish] = dishData
    var halfCount = 4
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .leading, spacing: 4) {
                
                ForEach(0..<halfCount, id: \.self) {
                    i in
                    DishView(dish: dishes[i])
                }
            }
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                        .overlay(Color("ColorGreenLight"))
                }
                
                Image(systemName: "heart.circle")
                    .renderingMode(.template)
                    .foregroundStyle(Color.red)
                    .font(Font.title.weight(.ultraLight))
                
                    .imageScale(.large)
                    
                
                HStack {
                    Divider()
                        .overlay(Color("ColorGreenLight"))
                }
            }
            
            VStack(alignment: .leading, spacing: 4) {
                ForEach(halfCount..<halfCount*2, id: \.self) {
                    i in
                    DishView(dish: dishes[i])
                }
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView(dishes: dishData)
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
