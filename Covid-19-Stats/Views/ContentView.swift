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
    var img = Image(systemName: "arrow.2.circlepath.circle.fill")
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().backgroundColor = .black
        self.dataVM = WorldStatsViewModel(endPoints: EndPoints.worldsStats)
    }
    
    var body: some View {
            NavigationView{
                ZStack{
                VStack(){
                    MainView(reportDate:dataVM.reportDate, totalCases: dataVM.totalCases, totalDeaths: dataVM.totalDeaths, totalRecovered: dataVM.totalRecovered, totalNewCasesToday: dataVM.totalNewCasesToday, totalNewDeathsToday: dataVM.totalNewDeathsToday, totalNewRecoderedToday: dataVM.totalNewRecoderedToday)
                    MainTableView(countries: dataVM.coutriesTotal)
                }
                    if dataVM.showProgress{
                        img.resizable().frame(width:50, height:50)
                            .rotationEffect(.degrees(dataVM.showProgress ? 360: 0))
                            .animation(Animation.linear(duration:0.8).repeatForever())
                            .onAppear(){
                                self.dataVM.showProgress.toggle()
                        }
                    }else{
                        img.hidden()
                    }
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

