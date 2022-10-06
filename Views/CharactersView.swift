//
//  CharactersView.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/10/06.
//

import SwiftUI

struct CharactersView: View {
    @EnvironmentObject var homeData: HomeViewModel
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content:{
            VStack(spacing: 15){
                
                // This is the Search Bar..
                HStack(spacing: 10){
                    Image(systemName: "magnifyingglass")
                }
            }
        })
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
