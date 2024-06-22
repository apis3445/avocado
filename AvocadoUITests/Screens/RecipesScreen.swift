//
//  ContentView.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 07/06/24.
//

import XCTest

class RecipesScreen: BaseScreen {
    
    lazy var scrollView: ScrollView = .init()
    lazy var recipeCardTitle: Text = .init(identifier: "recipeTitle")
    
    required init() {
        super.init()
    }
    
    func swipeToRecipe(recipeTitle: String) {
        let stepDescription = "Swipe to the recipe: '\(recipeTitle)'"
        self.scrollView.swipeToElementWithText(text: recipeTitle, step: stepDescription )
    }
}
