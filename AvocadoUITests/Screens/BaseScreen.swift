//
//  BaseScreen.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 07/06/24.
//

import XCTest
import SBTUITestTunnelClient

class BaseScreen {
    
    required init() {}
    
    lazy var app : SBTUITunneledApplication! = BaseTest.shared.app
    
    let visibleTimeout: TimeInterval = 2.0
    
    static let springboard: XCUIApplication = .init(bundleIdentifier: "com.apple.springboard")

    func attachScreenshot(name: String) {
        XCTContext.runActivity(named: "Attach the screenshot of current screen") { activity in
            let screen = XCUIScreen.main
            let fullScreenshot = screen.screenshot()
            let fullScreenshotAttachment = XCTAttachment(screenshot: fullScreenshot)
            fullScreenshotAttachment.lifetime = .keepAlways
            fullScreenshotAttachment.name = name
            activity.add(fullScreenshotAttachment)
        }
    }
    

}
