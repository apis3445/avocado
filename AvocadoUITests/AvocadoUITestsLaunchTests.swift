//
//  AvocadoUITestsLaunchTests.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 31/05/24.
//

import XCTest

final class AvocadoUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        XCUIApplication().tabBars["Tab Bar"].buttons["Recipes"].tap()

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
