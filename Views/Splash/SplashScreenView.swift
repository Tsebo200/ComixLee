//
//  SplashScreenView.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/10/06.
//

import SwiftUI

struct SplashScreenView: View{
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
 

    var body: some View {
        
        if isActive {
            Home()
        } else {
            ZStack{
                Color("Secondary Color")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("image1")
                        .resizable()
//                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height:120)
//                        .resizable()
//                        .font(.system(size: 300))
//                        .foregroundColor(.red)
                    Text("ComixLee")
                        .font(Font.custom("SF Pro Rounded", size: 26))
//                        .foregroundColor(.white.opacity(0.80))
                        .foregroundColor(Color("Dark Red"))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.3
                        self.opacity = 0
                    }
                    withAnimation(.easeIn(duration: 2.4)) {
                        self.size = 1.0
                        self.opacity = 1.0
                    }
                 
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.4) {
                    withAnimation {
                        self.isActive = true
                    }
               
                }
            }
        }
    }

}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
