//
//  MainView.swift
//  Covid-19-Stats
//
//  Created by Abdul Meraj on 4/11/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var dataVM:WorldStatsViewModel
    init(){
        self.dataVM = WorldStatsViewModel(endPoints: EndPoints.worldsStats)
    }
    var body: some View {
        
        VStack{
            ZStack(){
                Image("main").resizable().frame(maxWidth:500, maxHeight:240
                )
                VStack(){
                    Text("Data As Of: \(dataVM.createdDate)")
                    VStack(){
                        HStack(){
                            Text("New Cases:").frame(maxWidth:80, alignment: .leading)
                            Text(dataVM.newCases).font(Font.system(size: 20)).frame(maxWidth:120, alignment: .leading)
                        }.frame(maxWidth:500)
                        HStack(){
                            Text("New Deaths:").frame(maxWidth:80, alignment: .leading)
                            Text(dataVM.newDeaths).font(Font.system(size: 20)).frame(maxWidth:120, alignment: .leading)
                        }.frame(maxWidth:500)
                    }.frame(maxWidth: 500, maxHeight: 80, alignment: .leading)
                    Group{
                        HStack{
                            Text("Total Cases:").frame(maxWidth:100, alignment: .leading)
                            Text(dataVM.totalCases).font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading)
                        }
                        HStack{
                            Text("Total Deaths:").frame(maxWidth:100, alignment: .leading).frame(maxWidth:100, alignment: .leading)
                            Text(dataVM.totalDeaths).font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading)
                        }
                        HStack{
                            Text("Total Recovered:").frame(maxWidth:100, alignment: .leading).frame(maxWidth:100, alignment: .leading)
                            Text(dataVM.totalRecovered).font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading)
                        }
                    }.frame(maxWidth: 500, alignment: .leading)
                    Spacer()
                }
            }
            Spacer()
        }.frame(height:180).padding().font(Font.custom("HelveticaNeue-UltraLight", size: 14))
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
