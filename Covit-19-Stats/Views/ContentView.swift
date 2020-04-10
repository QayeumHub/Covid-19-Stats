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
    
    @ObservedObject var statsViewModel:StatsViewModel
    
    init(){
        self.statsViewModel = StatsViewModel()
        statsViewModel.getData(url: UrlStr.worldsStats)
    }
    
    
 
    
    
    
    var body: some View {
        
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
