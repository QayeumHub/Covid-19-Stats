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
    init(){
          //UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
          //UINavigationBar.appearance().backgroundColor = .black
      }
    var body: some View {
        NavigationView{
               TabView(selection: $selectedView) {
               ContentView()
                   .tabItem {
                       Image(systemName: "globe")
                       Text("Worldwide")
               }.tag(0)
               UsStatesCities()
                   .tabItem {
                       Image(systemName: "doc.text.magnifyingglass")
                       Text("US Counties")
               }.tag(1)
           }
        .navigationBarTitle("Worldwide Stats", displayMode: .inline)

        }
        .background(Color(red: 253 / 255, green: 253 / 255, blue: 253 / 255)
        .edgesIgnoringSafeArea(.all))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

