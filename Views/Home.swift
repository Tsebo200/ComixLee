//
//  Home.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/10/06.
//

import SwiftUI

struct Home: View {
    @StateObject var homeData = HomeViewModel()
    var body: some View {
        TabView{
            //Characters View
            CharactersView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
          
            
            //Setting up the environment in order to access data from CharcatersView
                .environmentObject(homeData)
            
            NavigationView {
                ContentView()}.tabItem{
                    Image(systemName: "book")
                    Text("My Comix")
                }
            
            
            ComicsView()
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Browse")
                }
                .environmentObject(homeData)
          
        
            NavigationView {
                SettingsModeSwitchView()}.tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
