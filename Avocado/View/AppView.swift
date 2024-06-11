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
                
                RecipesView()
                    .tabItem {
                        Image("tabicon-book")
                            .renderingMode(.template)
                        Text("Recipes")
                    }
                
                RipeningStagesView()
                    .tabItem {
                        Image("tabicon-avocado")
                            .renderingMode(.template)
                        Text("Ripening")
                    }
                
                SettingsView()
                    .tabItem {
                        Image("tabicon-settings")
                            .renderingMode(.template)
                        Text("Settings")
                    }
            }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.blue)
    }
}

struct AppView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppView()
    }
}


