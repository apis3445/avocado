//
//  RecipeCookingView.swift
//  Avocado
//
//  Created by Adriancys Jesus Villegas Toro on 6/10/23.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - Properties
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 24) {
            VStack(alignment: .center,spacing: 2) {
                Image(systemName: "person.2")
                    .frame(width: 28, height: 28)
                    .imageScale(.large)
                Text("\(recipe.serves) Serves")
            }
            
            VStack(alignment: .center,spacing: 2) {
                Image(systemName: "clock")
                    .frame(width: 28, height: 28)
                    .imageScale(.large)
                Text("\(recipe.preparation) Prep")
            }
            
            VStack(alignment: .center,spacing: 2) {
                Image(systemName: "flame")
                    .imageScale(.large)
                    .frame(width: 28, height: 28)
                Text("\(recipe.cooking) Cooking" )
            }
        }
        .font(.footnote)
        .foregroundColor(.gray)
        
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
