//
//  MainView.swift
//  Covid-19-Stats
//
//  Created by Abdul Meraj on 4/11/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import SwiftUI

struct MainView: View {
var reportDate:String,totalCases:String,totalDeaths:String,totalRecovered:String,totalNewCasesToday:String,totalNewDeathsToday:String,totalNewRecoderedToday:String
    init(reportDate:String,totalCases:String,totalDeaths:String,totalRecovered:String,totalNewCasesToday:String,totalNewDeathsToday:String,totalNewRecoderedToday:String){
        self.reportDate = reportDate
        self.totalCases = totalCases
        self.totalDeaths = totalDeaths
        self.totalRecovered = totalRecovered
        self.totalNewCasesToday = totalNewCasesToday
        self.totalNewDeathsToday = totalNewDeathsToday
        self.totalNewRecoderedToday = totalNewRecoderedToday
        
    }
 
    var body: some View {
        VStack{
            ZStack(){
                Image("main").resizable().frame(maxWidth:500, maxHeight:240)
                VStack(){
                    Text("\(reportDate)")
                    Spacer()
                    HStack(){
                        VStack{
                            Text("World").frame(maxWidth:90, alignment: .center).font(Font.system(size: 20))
                            Text("confirmed").frame(maxWidth:90, alignment: .center).font(Font.system(size: 14))
                            Text("cases").frame(maxWidth:90, alignment: .center).font(Font.system(size: 14))
                        }
                    VStack{
                        HStack{
                            Text("Total Cases:").frame(maxWidth:105, alignment: .leading)
                            Text("\(totalCases)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading)
                        }
                        HStack{
                            Text("Total Deaths:").frame(maxWidth:105, alignment: .leading)
                            Text("\(totalDeaths)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading).foregroundColor(.red)
                        }
                        HStack{
                            Text("Total Recovered:").frame(maxWidth:105, alignment: .leading)
                            Text("\(totalRecovered)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading).foregroundColor(.green)
                        }
                        HStack(){
                            Text("New Cases:").frame(maxWidth:105, alignment: .leading)
                            Text("\(totalNewCasesToday)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading)
                        }
                        HStack(){
                            Text("New Deaths:").frame(maxWidth:105, alignment: .leading)
                            Text("\(totalNewDeathsToday)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading).foregroundColor(.red)
                        }
                        HStack(){
                            Text("New Recovered:").frame(maxWidth:105, alignment: .leading)
                            Text("\(totalNewRecoderedToday)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading).foregroundColor(.green)
                        }
                    }
                    }

                }.frame(maxWidth: 500, alignment: .leading)



            }
        }.frame(height:180).padding().font(Font.custom("HelveticaNeue-Light", size: 14))
        
    }
}

//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
