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
        // Navigation View
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false, content:{
                VStack(spacing: 15){
                    
                    // This is the Search Bar..
                    HStack(spacing: 10){
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        TextField("Search Character", text: $homeData.searchQuery)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(Color.white)
                    
                    .shadow(color: Color.black.opacity(0.06), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.06), radius: 5, x: 5, y: -5)
                }
                .padding()
            })
            .navigationTitle("Marvel")
        }
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
