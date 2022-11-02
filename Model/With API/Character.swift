//
//  Character.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/10/08.
//

import SwiftUI
//This is the model schema for Characters

struct APIResult: Codable {
    var data: APICharacterData
}

struct APICharacterData: Codable {
    var count: Int
    var results: [Character]
}

struct Character: Identifiable,Codable {
    var id: Int
    var name: String
    var description: String
    var thumbnail: [String:String]
    var  urls: [[String: String]]

}

//just to check

//Consider To add the Rest
//    comics (ComicList, optional): A resource list containing comics which feature this character.,
//    stories (StoryList, optional): A resource list of stories in which this character appears.,
//    events (EventList, optional): A resource list of events in which this character appears.,
//    series (SeriesList, optional): A resource list of series in which this character appears.
