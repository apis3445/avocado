//
//  RecipeDetailScreen.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 07/06/24.
//

import XCTest

class RecipeDetailScreen: BaseScreen {
    
    lazy var recipeTitle: Text = .init(app: self.app, identifier: "RecipeTitle")
    
    required init() {
        super.init()
    }

}
