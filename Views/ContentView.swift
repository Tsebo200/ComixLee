//
//  ContentView.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        LoopingPlayer()
  
    
        ZStack{
            Home()
//            Color.blue
//                .ignoresSafeArea()
            Color("Background Color")
            
                .edgesIgnoringSafeArea(.all)
               

            Text("Marvel Comics")
                .foregroundColor(.white)
//                .foregroundColor(Color("Bright Yellow"))
                .font(Font.custom("SF Pro Round", size: 20))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


    //                .font(.system(size:30, weight: .medium, design: .default))
                
    //            Text("Marvel Comics")
    //                .foregroundColor(.white)
    //                .font(.system(size: 32, weight: .medium, design: .avenir))

                
            }
    //        VStack {
    //            Image(systemName: "globe")
    //                .imageScale(.large)
    //                .foregroundColor(.accentColor)
    //            Text("Hello, world!")
    //        }
    //        .padding()
