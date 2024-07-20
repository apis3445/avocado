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
        let recipesScreen: RecipesScreen = appScreen.tapTab(app: appScreen.app, tabIdentifier: Tabs.Recipes.rawValue)
        recipesScreen.swipeToRecipe(recipeTitle: recipe)
        recipesScreen.recipeCardTitle.tap(text: recipe)
        let recipeDetailScreen = RecipeDetailScreen()
        //Assert that the recipe title in detail view will be the same
        //that the main recipe view
        then("Recipe title is: '\(recipe)'") { _ in
            XCTAssertEqual(recipeDetailScreen.recipeTitle.label(), recipe, "Recipe title is different to '\(recipe)'")
        }
        recipeDetailScreen.attachScreenshot(name: "RecipeDetail")

    }

}
