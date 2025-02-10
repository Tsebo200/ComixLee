//
//  ContentView.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2025/02/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.lightWhite).ignoresSafeArea(edges: .all)
           
            
            ZStack{
                Color(.darkWhite).cornerRadius(45)
                    .frame(width: 400, height: 750)
                    .shadow(color: .black, radius: 5, x: 0, y: 4).opacity(0.2)
            }
        }
    }
}

#Preview {
    ContentView()
}
