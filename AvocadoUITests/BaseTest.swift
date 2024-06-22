//
//  BaseTest.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 07/06/24.
//

import XCTest

class BaseTest : XCTestCase {
    
    let app = XCUIApplication()
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        XCTContext.runActivity(named: "Launch app with clean state") { _ in
            //You can set some launch arguments to for example logout to clean state for all tests
            app.launchArguments = ["logOut"]
            app.launch()
        }
    }
    
    func deleteApp(appName: String) {
        app.terminate()
        let icon = BaseScreen.springboard.icons[appName]
        icon.press(forDuration: 1.3)
        //Remove App
        let removeAppButton = BaseScreen.springboard.buttons["Eliminar App"]
        //Delete App
        removeAppButton.tap()
        let deleteAppButton = BaseScreen.springboard.buttons["Eliminar App"]
        deleteAppButton.tap()
        //Delete
        let deleteButton = BaseScreen.springboard.buttons["Eliminar"]
        deleteButton.tap()
    }
    
    func then<A>(_ description: String, block: (XCTActivity) throws -> A) rethrows -> A {
        return try XCTContext.runActivity(named: "Then " + description, block: block)
    }
   
}
