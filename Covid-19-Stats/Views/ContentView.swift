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
    @ObservedObject var data1VM:WithCasesViwModel
    init(){
        self.dataVM = WorldStatsViewModel(endPoints: EndPoints.worldsStats)
        self.data1VM = WithCasesViwModel(endPoints: EndPoints.coutriesByCases)
    }
    
    var body: some View {
        
            ZStack{
                VStack(){
                    MainView(totalCases: dataVM.totalCases, totalActiveCases: dataVM.totalActiveCases, totalDeaths: dataVM.totalDeaths, totalRecovered: dataVM.totalRecovered, totalNewCasesToday: dataVM.totalNewCasesToday, totalNewDeathsToday: dataVM.totalNewDeathsToday, totalSeriousCases: dataVM.totalSeriousCases)
                    MainTableView(countries: data1VM.countryArrDetails)
                }
                ActivityIndicator(isAnimating: data1VM.showProgress)
                    .configure { $0.color = .red }
                    .background(Color.clear)
            }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

