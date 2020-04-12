//
//  MainTableView.swift
//  Covid-19-Stats
//
//  Created by Abdul Meraj on 4/11/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import SwiftUI

struct MainTableView: View {
    @ObservedObject var dataVM:WithCasesViwModel
    init(){
        self.dataVM = WithCasesViwModel(endPoints: EndPoints.coutriesByCases)
    }
 
    var body: some View {
        VStack(alignment: .leading){
            List{
                ForEach(dataVM.countryArrDetails.indices, id: \.self) { i in
                    HStack(){
                        Text("\(self.dataVM.countryArrDetails[i].country_name!)").font(Font.system(size: 16)).frame(maxWidth:140, alignment: .center)
                        VStack(spacing:3){
                                HStack(){
                                    Text("Total Cases:").frame(width:100, alignment: .leading)
                                    Text("\(self.dataVM.countryArrDetails[i].cases!)").frame(width:100, alignment: .leading)
                                }
                                HStack(){
                                    Text("Total Deaths:").frame(width:100, alignment: .leading)
                                    Text("\(self.dataVM.countryArrDetails[i].deaths!)").frame(width:100, alignment: .leading).foregroundColor(.red)
                                }
                                HStack(){
                                    Text("Total Recovered:").frame(width:100, alignment: .leading)
                                    Text("\(self.dataVM.countryArrDetails[i].total_recovered!)").frame(width:100, alignment: .leading).foregroundColor(.green)
                                }
                            
                            HStack(){
                                Text("New Cases:").frame(width:100, alignment: .leading)
                                Text("\(self.dataVM.countryArrDetails[i].new_cases!)").frame(width:100, alignment: .leading)
                            }
                            HStack(){
                                Text("New Deaths:").frame(width:100, alignment: .leading)
                                Text("\(self.dataVM.countryArrDetails[i].new_deaths!)").frame(width:100, alignment: .leading).foregroundColor(.red)
                            }
                        }
                        
                    }
                    
                }.listRowBackground(Color.clear).frame(alignment: Alignment.leading).font(Font.custom("HelveticaNeue-Light", size: 12))
            }.frame(maxHeight: 800, alignment: .top)
        }
    }
}

struct MainTableView_Previews: PreviewProvider {
    static var previews: some View {
        MainTableView()
    }
}
