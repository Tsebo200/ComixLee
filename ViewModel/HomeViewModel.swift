//
//  HomeViewModel.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/10/06.
//

import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
    @Published var searchQuery = ""
    
    //Combine Framework Search barr...
    
    // used to cancel the search publisher when eveer we need....
    var searchCancellable: AnyCancellable? = nil
    
    init(){
//         since SwiftUI uses @publish so its a publisher....
//         so we dont need to explicityly define publisher... (left of @05:08)
        searchCancellable = $searchQuery
        //removing deuplicate typings..
            .removeDuplicates()
        
            .debounce(for: 0.6, scheduler: RunLoop.main)
            .sink(receiveValue: {str in
                
                if str == ""{
                    //
                } else{
                    print(str)
                }
                    
                })
    }
    
}
