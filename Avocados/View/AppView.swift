//
//  AppView.swift
//  Avocados
//
//  Created by Labhesh Dudi on 27/10/25.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

#Preview {
    AppView()
}
