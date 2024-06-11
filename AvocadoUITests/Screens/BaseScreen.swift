//
//  BaseScreen.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 07/06/24.
//

import XCTest

class BaseScreen {
    
    required init() {}
    
    static let app = XCUIApplication()
    
    let visibleTimeout: TimeInterval = 2.0
}
