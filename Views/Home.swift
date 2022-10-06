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
                    Image(systemName: "person.3.fill")
                    Text("Characters")
                }
            //Setting up the environment in order to access data from CharcatersView
                .environmentObject(homeData)
            Text("comics")
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("comics")
                }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
