//
//  AppDelegate.swift
//  Avocado
//
//  Created by Abigail Armijo Hernández on 14/06/24.
//

import Foundation
import SwiftUI
import SBTUITestTunnelServer

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        if ProcessInfo.processInfo.arguments.contains("startStubServer") {
            SBTUITestTunnelServer.takeOff()
        }
        if ProcessInfo.processInfo.arguments.contains("logOut") {
            print ("logout")
        }
        return true
    }
}
