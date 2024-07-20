//
//  appScreen.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 07/06/24.
//

import XCTest

class AppScreen: BaseScreen, TabBarProtocol {

    required init() {
        super.init()
    }
    
    public func stub(stub: HeadersStub? = nil) {
        stub?.start()
    }
}
