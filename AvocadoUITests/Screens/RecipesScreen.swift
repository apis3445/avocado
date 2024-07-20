//
//  ContentView.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 07/06/24.
//

import XCTest

class RecipesScreen: BaseScreen {
    
    lazy var scrollView: ScrollView = .init(app: self.app)
    lazy var recipeCardTitle: Text = .init(app: self.app, identifier: "recipeTitle")
    
    required init() {
        super.init()
    }
    
    public func mockHeader(stub: HeadersStub? = nil) {
        stub?.start()
    }
    
    func swipeToRecipe(recipeTitle: String) {
        let stepDescription = "Swipe to the recipe: '\(recipeTitle)'"
        self.scrollView.swipeToElementWithText(text: recipeTitle, step: stepDescription )
    }
}
