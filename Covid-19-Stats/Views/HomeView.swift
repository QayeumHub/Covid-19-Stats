//
//  HomeView.swift
//  Covid-19-Stats
//
//  Created by Abdul Meraj on 4/16/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var selectedView = 0
    var body: some View {
               TabView(selection: $selectedView) {
               ContentView()
                   .tabItem {
                       Image(systemName: "globe")
                       Text("Worldwide")
               }.tag(0)
               CDCWebsite()
                   .tabItem {
                    
                       Image(systemName: "doc.richtext")
                       Text("CDC Latest")
               }.tag(1)
           }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

