//
//  CharactersView.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/10/06.
//

import SwiftUI
import SDWebImageSwiftUI

struct CharactersView: View {
    @EnvironmentObject var homeData: HomeViewModel
    
    var Marvels: [Marvel] = MarvelChars
    
    var body: some View {
        // Navigation View
        NavigationView{
            
//            Use this if API still gives you problens
//            ScrollView {
//                ForEach(Marvels, id: \.id) { Marvel in
//
//                    HStack {
//                        Image(Marvel.PFP)
//                            .resizable()
//                            .frame(width: 100, height: 100)
//                        Text(Marvel.name)
//
//                        Text(Marvel.desc)
//                    }
//                }
//            }
            
            
            
            
            
            
            
//            HStck wrap in a destination in detail screen
            ScrollView(.vertical, showsIndicators: false, content:{
                VStack(spacing: 15){

                    // Search Bar..
                    HStack(spacing: 10){

                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)

                        TextField("Search Character", text: $homeData.searchQuery)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(Color.white)
                    //Shadows
                    .shadow(color: Color.black.opacity(0.06), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.06), radius: 5, x: 5, y: -5)
                }
                .padding()

                if let characters = homeData.fetchedCharacters{

                    if characters.isEmpty{
                        // No Results...
                        Text("No Results Found")
                            .padding(.top,20)
                    }
                    else{
                        // Displaying results.....
                        ForEach(characters){data in

                            CharacterRowView(character: data)
                        }
                    }
                }
                else{
                    if homeData.searchQuery != ""{
//                         Loading Screen...
                         ProgressView()
                        .padding(.top,20)

                    }
//
                }
            })
            .navigationTitle("Marvel Comix")
        }
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CharacterRowView: View {
    var character: Character
    
    var body: some View{
        HStack(alignment: .top, spacing: 15){
            
            WebImage(url: extractImage(data: character.thumbnail))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
            
            VStack(alignment: .leading, spacing: 8, content: {
                
                Text(character.name)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(character.description)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(4)
                    .multilineTextAlignment(.leading)
            })
            Spacer(minLength: 0)
        }
    }
    
    func extractImage(data: [String: String])->URL{
       //combining both and forming image...
        let path = data["path"] ?? ""
        let ext = data["extension"] ?? ""
        
        return URL(string: "\(path).\(ext)")!
    }
}
