//
//  BaseTest.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 07/06/24.
//

import XCTest

class BaseTest : XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        let app = XCUIApplication()
        app.launch()
    }
    
   
}
