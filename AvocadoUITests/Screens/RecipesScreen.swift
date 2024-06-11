//
//  ContentView.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 07/06/24.
//

import XCTest

class RecipesScreen: BaseScreen {
    
    lazy let scrollViewsQuery = BaseScreen.app.scrollViews
    
    required init() {
        super.init()
        visible()
    }
    
    func selectRecipeByTitle(title: String) -> XCUIElement{
        return scrollViewsQuery.otherElements.containing(.staticText, identifier:title).element
    }
    
    func visible() {
        guard scrollViewsQuery.firstMatch.waitForExistence(timeout: visibleTimeout) else {
            XCTFail("Content View Screen is not visible")
            return
        }
    }
    
}

extension RecipesScreen {
    
}
