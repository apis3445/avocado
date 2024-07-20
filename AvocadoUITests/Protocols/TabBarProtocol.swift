//
//  TabBarProtocol.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 08/06/24.
//

import XCTest

protocol TabBarProtocol {
    func tapTab<T>(app: XCUIApplication,tabIdentifier: String, tabBarIdentifier: String) -> T where T: BaseScreen
}

extension TabBarProtocol {
    
    func tapTab<T>(app: XCUIApplication, tabIdentifier: String, tabBarIdentifier: String = "Tab Bar") -> T where T: BaseScreen {
        XCTContext.runActivity(named: "Tap in the tab: '\(tabIdentifier)'") { _ in
            let tabBar: TabBar = TabBar(app: app,identifier: tabBarIdentifier)
            tabBar.getTab(identifier: tabIdentifier).tap()
        }
        return T.init()
    }
}
