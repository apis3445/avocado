//
//  AppView.swift
//  Avocado
//
//  Created by Adriancys Jesus Villegas Toro on 2/10/23.
//

import SwiftUI

struct AppView: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "ColorGreenMedium")
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    var body: some View {
        TabView {
            Group {
                AvocadosView()
                    .tabItem {
                        Image("tabicon-branch")
                            .renderingMode(.template)

                        Text("Avocados")
                    }
                    .accessibilityLabel("Avocados section")
                
                RecipesView()
                    .tabItem {
                        Image("tabicon-book")
                            .renderingMode(.template)
                        Text("Recipes")
                    }
                    .accessibilityLabel("Recipes section")
                
                RipeningStagesView()
                    .tabItem {
                        Image("tabicon-avocado")
                            .renderingMode(.template)
                        Text("Ripening")
                    }
                    .accessibilityLabel("Rippening section")
                
                SettingsView()
                    .tabItem {
                        Image("tabicon-settings")
                            .renderingMode(.template)
                        Text("Settings")
                    }
                    .accessibilityLabel("Settings section")
            }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.blue)
    }
}

struct AppView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppView()
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
            .preferredColorScheme(.dark)
    }
}


