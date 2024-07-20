//
//  ScrollView.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 18/06/24.
//

import XCTest

class ScrollView : BaseComponent {
    
    lazy var scrollViewsQuery = self.app.scrollViews
    
    required override init(app: XCUIApplication) {
        super.init(app: app)
    }
    
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
