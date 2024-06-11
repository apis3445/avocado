//
//  TabBar.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 08/06/24.
//

import XCTest

class TabBar {
    
    let app = XCUIApplication()
    
    var tabBar: XCUIElement
    
    init( identifier: String) {
       tabBar = app.tabBars[identifier]
    }
    
    func getTab(identifier: String) -> XCUIElement {
        return tabBar.buttons[identifier]
    }
    
}
