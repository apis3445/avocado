//
//  AvocadoApp.swift
//  Avocado
//
//  Created by Adriancys Jesus Villegas Toro on 28/9/23.
//

import SwiftUI

@main
struct AvocadoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            AppView()
        }
    }
}
