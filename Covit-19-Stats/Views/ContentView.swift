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
    
    @ObservedObject var dataVM:WorldStatsViewModel
    
    init(){
        self.dataVM = WorldStatsViewModel(endPoints: EndPoints.worldsStats)
      
    }
    

    var body: some View {
       //Text("Hello!")
        Text(dataVM.createdDate)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
