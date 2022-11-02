//
//  Settings.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/10/12.
//

import SwiftUI

struct SettingsModeSwitchView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    @State private var vibrateOnRing = false
    var body: some View {
        VStack {
            //                        Normal on and off Switch
            
            Toggle(isOn: $isDarkMode) {
                Text("Mode")
                    .padding([.bottom, .trailing], -30)
                    .padding([.leading, .trailing], 30)
            
            }
            Picker("mode", selection: $isDarkMode){
                Text("Light")
                    .tag(false)
                Text("Dark")
                    .tag(true)
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            //
            Spacer()
//            List(0..<5, id: \.self){ num in
//                NavigationLink(destination: Text("\(num)")){
//                    Text("\(num)")
//                }
            }.navigationTitle("Mode Switch")
//        }
    }
}

struct SettingsModeSwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsModeSwitchView()
    }
}
