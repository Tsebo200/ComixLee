//
//  Comics.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/11/02.
//

import SwiftUI


struct APIComicsResult: Codable {
    var data: APIComicData
}

struct APIComicData: Codable {
    var count: Int
    var results: [Comic]
}

struct Comic: Identifiable,Codable {
    var id: Int
    var title: String
    var description: String?
    var thumbnail: [String:String]
    var  urls: [[String: String]]

}
