//
//  ComixLeeApp.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/09/21.
//

import SwiftUI

@main
struct ComixLeeApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some Scene {
        WindowGroup {
                        ContentView()
            //            SplashScreenView() //It is in the splash group
            //            Home()
            
//            TabView {
//                NavigationView {
//                    SettingsModeSwitchView()
//                }.tabItem {
//                    Image(systemName: "list.bullet")
//                    Text("List")
//                }
//                Text("Profile")
//                    .tabItem{
//                        Image(systemName: "person")
//                        Text("Profile")
//                    }
//            }
//            .preferredColorScheme(isDarkMode ? .dark : .light)
//            .accentColor(.primary)
            
        }
    }
}
