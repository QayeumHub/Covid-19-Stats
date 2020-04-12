//
//  ContentView.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import SwiftUI
import Combine
struct ContentView: View {
    
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().backgroundColor = .black
    }
    
    
    var body: some View {
        NavigationView{
        VStack(){
            MainView()
            MainTableView()
        }
            
        .navigationBarTitle("Covid-19-Stats", displayMode: .inline)
        }
    .background(Color(red: 253 / 255, green: 253 / 255, blue: 253 / 255)
    .edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

