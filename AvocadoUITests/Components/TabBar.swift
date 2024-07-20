//
//  TabBar.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 08/06/24.
//

import XCTest
import SBTUITestTunnelClient

class TabBar : BaseComponent {
    
    var tabBar: XCUIElement
    
    required init(app: XCUIApplication, identifier: String) {
        self.tabBar = app.tabBars[identifier]
        super.init(app: app)
    }
    
    func getTab(identifier: String) -> XCUIElement {
        return tabBar.buttons[identifier]
    }
    
}
