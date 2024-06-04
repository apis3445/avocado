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
        // Launch the app
        app.launch()
        
        //Select the Recipes tab
        app.tabBars["Tab Bar"].buttons["Recipes"].tap()
        
        //Get the element with the name of the recipe
        let scrollViewsQuery = app.scrollViews
        let avocadoRecipeElement = scrollViewsQuery.otherElements.containing(.staticText, identifier:recipe).element
        
        //Swipe up to the recipe "Avocado Crostini"
        avocadoRecipeElement.swipeUp()
        
        //Tap in the recipe
        avocadoRecipeElement.tap()
        
        //Gets the recipe title
        let elementsQuery = scrollViewsQuery.otherElements
        let recipeTitle = elementsQuery.staticTexts["RecipeTitle"]
        
        //Assert that the recipe title in detail view will be the same
        //that the main recipe view
        XCTAssertEqual(recipeTitle.label, recipe)
    }

}
