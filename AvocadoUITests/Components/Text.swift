//
//  Text.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 18/06/24.
//

import XCTest

class Text {
    
    let app = XCUIApplication()
    let text: XCUIElement
    let identifier: String
    
    init(identifier: String) {
        self.text = app.staticTexts[identifier]
        self.identifier = identifier
    }
    
    func tap(text: String) {
        XCTContext.runActivity(named: "Tap in '\(text)'") { _ in
            let text = app.staticTexts[text]
            text.tap()
        }
    }
    
    func label() -> String {
        return XCTContext.runActivity(named: "Get the label for: '\(self.identifier)'") { _ in
            return self.text.label
        }
    }
}
