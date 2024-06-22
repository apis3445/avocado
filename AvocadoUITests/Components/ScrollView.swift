//
//  ScrollView.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 18/06/24.
//

import XCTest

class ScrollView {
    
    let app = XCUIApplication()
    lazy var scrollViewsQuery = BaseScreen.app.scrollViews
    
    func swipeToElementWithText(text: String, step: String = "" ) {
        var stepDescription = "Swipe to element with the text: '\(text )'"
        if (!step.isEmpty) {
            stepDescription = step
        }
        XCTContext.runActivity(named: stepDescription) { _ in
            let element = scrollViewsQuery.otherElements.containing(.staticText, identifier:text).element
            element.swipeUp()
        }
    }
}
