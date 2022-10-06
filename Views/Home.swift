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
            Text("Characters")
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Characters")
                }
            
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
