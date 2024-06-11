//
//  RecipeDetailScreen.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 07/06/24.
//

import XCTest

class RecipeDetailScreen: BaseScreen {
    
    required init() {
        super.init()
    }
    
    lazy let recipeTitle: XCUIElement = BaseScreen.app.staticTexts["RecipeTitle"]
    
}
