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
                Image("main").resizable().frame(maxWidth:500, maxHeight:240)
                VStack(){
                    Text("\(dataVM.reportDate)")
                    Spacer()
                    HStack(){
                       Text("World").frame(maxWidth:80, alignment: .center).font(Font.system(size: 20))
                    VStack{
                        HStack{
                            Text("Total Cases:").frame(maxWidth:110, alignment: .leading)
                            Text("\(dataVM.totalCases)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading)
                        }
                        HStack{
                            Text("Total Deaths:").frame(maxWidth:110, alignment: .leading)
                            Text("\(dataVM.totalDeaths)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading).foregroundColor(.red)
                        }
                        HStack{
                            Text("Total Recovered:").frame(maxWidth:110, alignment: .leading)
                            Text("\(dataVM.totalRecovered)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading).foregroundColor(.green)
                        }
                        HStack(){
                            Text("New Cases:").frame(maxWidth:110, alignment: .leading)
                            Text("\(dataVM.totalNewCasesToday)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading)
                        }
                        HStack(){
                            Text("New Deaths:").frame(maxWidth:110, alignment: .leading)
                            Text("\(dataVM.totalNewDeathsToday)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading).foregroundColor(.red)
                        }
                    }
                    }

                }.frame(maxWidth: 500, alignment: .leading)



            }
        }.frame(height:180).padding().font(Font.custom("HelveticaNeue-Light", size: 14))
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
