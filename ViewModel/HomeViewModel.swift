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
    
    //fetch Data
    @Published var fetchCharcters: [Character]? = nil
    init(){
        //         since SwiftUI uses @publish so its a publisher....
        //         so we dont need to explicityly define publisher... (left of @05:08)
        searchCancellable = $searchQuery
        //removing deuplicate typings..
            .removeDuplicates()
        
            .debounce(for: 0.6, scheduler: RunLoop.main)
            .sink(receiveValue: {str in
                
//                if str == ""{
//                    //rest data
////                    self.fetchedCharacters = nil
//
//                }
//                else{
//                    //search Data
//                    self.searchCharcter()
//
//                }
                
            })
        
    }
    func searchCharcter(){
        let ts = String(Date().timeIntervalSince1970)
        let hash = MD5(data: "\(ts)\(privateKey)\(publicKey)")
        let url = "https://gateway.marvel.com:443/v1/public/characters?ts=\(ts)&apikey=\(publicKey)&hash=\(hash)"
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) {(data, _, err) in
            
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
                    
//                    if self.fetchedCharacters == nil{
//                        self.fetchedCharacters = characters.data.results
//                    }
                }
            }
            catch{
                print(error.localizedDescription)
            }
        }
        //Use cryptoKit to generate Hash...
        func MD5(data: String)->String{
            let hash = Insecure.MD5.hash(data: data.data(using: .utf8) ?? Data())
            
            return hash.map{
                String(format: "%02hnx", $0)
            }
            .joined()
        }
    }
}

struct Previews_HomeViewModel_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
