//
//  MainView.swift
//  Covid-19-Stats
//
//  Created by Abdul Meraj on 4/11/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var totalCases:String,totalActiveCases:String,totalDeaths:String,totalRecovered:String,totalNewCasesToday:String,totalNewDeathsToday:String,totalSeriousCases:String
    init(totalCases:String,totalActiveCases:String,totalDeaths:String,totalRecovered:String,totalNewCasesToday:String,totalNewDeathsToday:String,totalSeriousCases:String){
        self.totalCases = totalCases
        self.totalActiveCases = totalActiveCases
        self.totalDeaths = totalDeaths
        self.totalRecovered = totalRecovered
        self.totalNewCasesToday = totalNewCasesToday
        self.totalNewDeathsToday = totalNewDeathsToday
        self.totalSeriousCases = totalSeriousCases
        
    }
 
    var body: some View {
        VStack{
            ZStack(){
                Image("main").resizable().frame(maxWidth:500, maxHeight:240)
                VStack(){
                    //Text("\(reportDate)")
                    HStack(){
                        VStack{
                            Text("World").frame(maxWidth:85, alignment: .center).font(Font.system(size: 20))
                        }
                        VStack{
                            HStack{
                                Text("Total Cases:").frame(maxWidth:110, alignment: .leading)
                                Text("\(totalCases)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading)
                            }
                            HStack(){
                                Text("Total Active:").frame(maxWidth:110, alignment: .leading)
                                Text("\(totalActiveCases)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading)
                            }
                            HStack{
                                Text("Total Deaths:").frame(maxWidth:110, alignment: .leading)
                                Text("\(totalDeaths)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading).foregroundColor(.red)
                            }
                            HStack{
                                Text("Total Recovered:").frame(maxWidth:110, alignment: .leading)
                                Text("\(totalRecovered)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading).foregroundColor(.green)
                            }
                            HStack(){
                                Text("New Cases:").frame(maxWidth:110, alignment: .leading)
                                Text("\(totalNewCasesToday)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading)
                            }
                            HStack(){
                                Text("New Deaths:").frame(maxWidth:110, alignment: .leading)
                                Text("\(totalNewDeathsToday)").font(Font.system(size: 20)).frame(maxWidth:200, alignment: .leading).foregroundColor(.red)
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
