//
//  AvocadoUITests.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 31/05/24.
//

import XCTest

final class AvocadoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCanSeeRecipe() throws {
        let recipe = "Avocado Crostini"
        
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        app.tabBars["Tab Bar"].buttons["Recipes"].tap()
        
        let scrollViewsQuery = app.scrollViews
        let avocadoRecipeElement = scrollViewsQuery.otherElements.containing(.staticText, identifier:recipe).element
        avocadoRecipeElement.swipeUp()
        avocadoRecipeElement.tap()
        let elementsQuery = scrollViewsQuery.otherElements
        let recipeTitle = elementsQuery.staticTexts["RecipeTitle"]
        
        XCTAssertEqual(recipeTitle.label, recipe)
    }

}
