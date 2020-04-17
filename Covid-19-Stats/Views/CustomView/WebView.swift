//
//  WebView.swift
//  Covid-19-Stats
//
//  Created by Abdul Meraj on 4/16/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var url: String
    func makeUIView(context: Context) ->  WKWebView {
        guard let url = URL(string: url) else{
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    
    }
    
}
