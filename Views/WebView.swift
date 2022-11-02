//
//  WebView.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/11/02.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        
        let view = WKWebView()
        view.load(URLRequest(url: url))
        
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
}
