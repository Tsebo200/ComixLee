//
//  HomeViewModel.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/10/06.
//

import SwiftUI
import Combine
import CryptoKit

class HomeViewModel: ObservableObject {
    @Published var searchQuery = ""
    
    //Combine Framework Search barr...
    
    // used to cancel the search publisher when eveer we need....
    var searchCancellable: AnyCancellable? = nil
    
    
    //fetched Data...
    @Published var fetchedCharacters: [Character]? = nil
    
    // Comic View Data.....
    @Published var fetchedComics: [Comic] = []
    
    @Published var offset: Int = 0
    
    init(){
        //         since SwiftUI uses @publish so its a publisher....
        //         so we dont need to explicityly define publisher... (left of @05:08)
        searchCancellable = $searchQuery
        //removing deuplicate typings..
            .removeDuplicates()
        
            .debounce(for: 0.6, scheduler: RunLoop.main)
            .sink(receiveValue: {str in
                
                if str == ""{
                //rest data
                self.fetchedCharacters = nil

            }
            else{
                //search Data
                print(str)
                    self.searchCharacter()
                }
            })
        
    }
    //    Characters Part
    func searchCharacter(){
        let ts = String(Date().timeIntervalSince1970)
        let hash = MD5(data: "\(ts)\(privateKey)\(publicKey)")
        
        let originalQuery = searchQuery.replacingOccurrences(of: "", with: "%20")
        let url = "https://gateway.marvel.com:443/v1/public/characters?nameStartsWith=\(originalQuery)&ts=\(ts)&apikey=\(publicKey)&hash=\(hash)"
        

        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) { (data, _, err) in
            
            if let error = err{
                print(error.localizedDescription)
                return
            }
            
            guard let APIData = data else{
                print("no data found")
                return
            }
            do{
                
                //Now This is were we decode The API Data....
                let characters = try JSONDecoder().decode(APIResult.self, from: APIData)
                
                DispatchQueue.main.async {
                    
                    if self.fetchedCharacters == nil{
                        self.fetchedCharacters = characters.data.results
//                        Added with Armand to test check results
//                        print(self.fetchedCharacters ?? "hello world")
                    }
                }
            }
            catch{
                print(error.localizedDescription)
            }
            
        }
        .resume()
    }
    
        // To Generate Hash were going to use cryptoKit....Using cryptoKit to generate Hash...
        func MD5(data: String)->String{
            let hash = Insecure.MD5.hash(data: data.data(using: .utf8) ?? Data())
            
            return hash.map{
                String(format: "%02hnx", $0)
            }
            .joined()
        }
    
    //    Comics Part
    func fetchComics(){
        let ts = String(Date().timeIntervalSince1970)
        let hash = MD5(data: "\(ts)\(privateKey)\(publicKey)")
        
        let originalQuery = searchQuery.replacingOccurrences(of: "", with: "%20")
        let url =
            "https://gateway.marvel.com:443/v1/public/comics?limit=20&offset=\(offset)&ts=\(ts)&apikey=\(publicKey)&hash=\(hash)"
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) { (data, _, err) in
            
            if let error = err{
                print(error.localizedDescription)
                return
            }
            
            guard let APIData = data else{
                print("no data found")
                return
            }
            do{
                
                // Decoding The API Data....
// line 135 - decode(APIComicsResult.self....diverts form the tutorial as in tutorial suppossed to be....decode(APIComicResult.self
    // To summarise APIComicsResult is what I have and what works but the tutorial has it as APIComicResult without the "S"
                let characters = try JSONDecoder().decode(APIComicsResult.self, from: APIData)
                
                DispatchQueue.main.async {
                    self.fetchedComics.append(contentsOf: characters.data.results)
//                    self.fetchedComics = characters.data.results
//                    if self.fetchedCharacters == nil{

//                        Added with Armand to test check results
//                        print(self.fetchedCharacters ?? "hello world")
//                    }
                }
            }
            catch{
                print(error.localizedDescription)
            }
            
        }
        .resume()
    }
    
    }


struct Previews_HomeViewModel_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
