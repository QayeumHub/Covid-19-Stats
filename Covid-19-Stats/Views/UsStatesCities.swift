//
//  UsStatesCities.swift
//  Covid-19-Stats
//
//  Created by Abdul Meraj on 4/18/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import SwiftUI
import Combine

struct UsStatesCities: View {
    var countryName = "USA"
    @ObservedObject var dataVM: StatesViewModel
    var stateNamesArr = ListOfUSstates.statesArr
    @State private var selectedState = 5
    var stateName = "California"
    init(){
        self.dataVM = StatesViewModel(endPoints: EndPoints.countryStats(countryName: countryName), stateName:stateName)
    }
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Form {
                    Picker(selection: $selectedState, label: Text("Please Choose State")) {
                        ForEach(0 ..< stateNamesArr.count) {
                            Text(self.stateNamesArr[$0]).tag($0)
                        }.id(2)
                    }
                    List{
                        ForEach(dataVM.statesStat.filter({$0.province == self.stateNamesArr[self.selectedState]})) { data in
                            HStack(){
                                Text("\(data.city ?? "-")").font(Font.system(size: 16)).frame(maxWidth:140, alignment: .trailing)
                                VStack(spacing:3){
                                    HStack(){
                                        Text("Confirmed:").frame(width:100, alignment: .leading)
                                        Text("\((data.confirmed?.formatNumber() ?? "0"))").frame(width:100, alignment: .leading)
                                    }
                                    HStack(){
                                        Text("Recovered:").frame(width:100, alignment: .leading)
                                        Text("\((data.recovered?.formatNumber() ?? "0"))").frame(width:100, alignment: .leading).foregroundColor(.green)
                                    }
                                    HStack(){
                                        Text("Deaths:").frame(width:100, alignment: .leading)
                                        Text("\((data.deaths?.formatNumber() ?? "0"))").frame(width:100, alignment: .leading).foregroundColor(.red)
                                    }
                                    
                                }
                                
                            }.listRowBackground(Color.clear).frame(alignment: Alignment.leading).font(Font.custom("HelveticaNeue-Light", size: 14))
                        }
                    }
                    
                }
            }
            ActivityIndicator(isAnimating: dataVM.showProgress)
                .configure { $0.color = .red }
                .background(Color.clear)
        }
        
    }
    //  .navigationBarTitle("\(countryName)", displayMode: .inline)
}

struct UsStatesCities_Previews: PreviewProvider {
    static var previews: some View {
        UsStatesCities()
    }
}
