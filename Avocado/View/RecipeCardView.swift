//
//  RecipeCardView.swift
//  Avocado
//
//  Created by Adriancys Jesus Villegas Toro on 6/10/23.
//

import SwiftUI

struct RecipeCardView: View {
    
    // MARK: - Properties
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            //Card Image
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color("ColorGreenMedium"))
                                .imageScale(.small)
                                .background(
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 36, height: 36)
                                    )
                                .shadow(
                                    color:Color("ColorBlackTransparentLight"),
                                        radius: 2,
                                        x: 0,
                                y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            VStack(alignment: .leading) {
                Text(recipe.title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                    .padding(.bottom, 1)
                    .accessibilityIdentifier("recipeTitle")
                
                Text(recipe.headline)
                    .font(.system(.headline, design: .default))
                    .foregroundColor(.gray)
                    .padding(.bottom, 8)
                
                RecipeRatingView(recipe: recipe)
                    .padding(.bottom, 8)
                Divider()
                RecipeCookingView(recipe: recipe)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, 8)
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"),
                radius: 8,
                x: 0,
                y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModel = true
        }
        .sheet(isPresented: self.$showModel) {
            RecipeDetailView(recipe: recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
