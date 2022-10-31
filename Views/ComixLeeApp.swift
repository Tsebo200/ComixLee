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
            
            
//            SplashScreenView() //It is in the splash group
//            Home()
            
            //Feedback
            //Remove all TabViews
            // Add the Home view here
            
            TabView {
                NavigationView {
                    Home()}.tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }

                NavigationView {
                    ContentView()}.tabItem{
                        Image(systemName: "book")
                        Text("Reading")
                    }
                NavigationView {
                    SettingsModeSwitchView()}.tabItem {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    }
                 
            }
                .preferredColorScheme(isDarkMode ? .dark : .light)
                .accentColor(.primary)
                
            }
        }
    }

//                Text("Profile")
//                    .tabItem{
//                        Image(systemName: "person")
//                        Text("Profile") //Check this out
//                    }
