//
//  AvocadoUITests.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 31/05/24.
//

import XCTest

final class AvocadoUITests: BaseTest {

    func testCanSeeRecipeDetail() throws {
        let recipe = "Avocado Crostini"
        let appScreen = AppScreen()
        //Tap in the tabbar with the text "Recipes"
        let recipesScreen: RecipesScreen = appScreen.tapTab(tabIdentifier: Tabs.Recipes.rawValue)
        //Get the recipe element
        let recipeCardTitle = recipesScreen.selectRecipeByTitle(title: recipe)
        //Because the recipe card is not visible in the screen we need to swipe to the card with the title "Avocado Crostini"
        recipeCardTitle.swipeUp()
        //Tap in the recipe
        recipeCardTitle.tap()
        let recipeDetailScreen = RecipeDetailScreen()
        //Assert that the recipe title in detail view will be the same
        //that the main recipe view
        XCTAssertEqual(recipeDetailScreen.recipeTitle.label, recipe, "Recipe title is different to '\(recipe)'")
         
    }

}
