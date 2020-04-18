//
//  States.swift
//  Covid-19-Stats
//
//  Created by Abdul Meraj on 4/17/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import SwiftUI
import Combine

struct States: View {
    var countryName:String
    @ObservedObject var dataVM: StatesViewModel
    var stateNames = ListOfUSstates.statesArr
    @State private var selectedState = 5
    var stateName = "California"
    init(countryName:String){
        self.countryName = countryName
        self.dataVM = StatesViewModel(endPoints: EndPoints.countryStats(countryName: countryName), stateName:stateName)
    }
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Form {
                    Picker(selection: $selectedState, label: Text("Please Choose State")) {
                        ForEach(0 ..< stateNames.count) {
                            Text(self.stateNames[$0]).tag($0)
                        }
                    }//.onTapGesture {
                      //  self.dataVM.search(name: self.stateNames[self.selectedState])
                    //}
                    
                    List{
                        ForEach(dataVM.statesStat.indices, id: \.self) { i in
                            HStack(){
                                Text("\(self.dataVM.statesStat[i].province ?? "-")").font(Font.system(size: 16)).frame(maxWidth:140, alignment: .center)
                                VStack(spacing:3){
                                    HStack(){
                                        Text("\(self.dataVM.statesStat[i].city ?? "-")").frame(width:100, alignment: .leading).font(Font.system(size: 15))
                                        Text("").frame(width:100, alignment: .leading)
                                    }
                                    HStack(){
                                        Text("Confirmed:").frame(width:100, alignment: .leading)
                                        Text("\((self.dataVM.statesStat[i].confirmed?.formatNumber() ?? "0"))").frame(width:100, alignment: .leading)
                                    }
                                    HStack(){
                                        Text("Recovered:").frame(width:100, alignment: .leading)
                                        Text("\((self.dataVM.statesStat[i].recovered?.formatNumber() ?? "0"))").frame(width:100, alignment: .leading).foregroundColor(.green)
                                    }
                                    HStack(){
                                        Text("Deaths:").frame(width:100, alignment: .leading)
                                        Text("\((self.dataVM.statesStat[i].deaths?.formatNumber() ?? "0"))").frame(width:100, alignment: .leading).foregroundColor(.red)
                                    }
                                    
                                }
                                
                            }.listRowBackground(Color.clear).frame(alignment: Alignment.leading).font(Font.custom("HelveticaNeue-Light", size: 14))
                        }.frame(maxHeight: 800, alignment: .top)
                    }
                }
            }
            ActivityIndicator(isAnimating: dataVM.showProgress)
                .configure { $0.color = .red }
                .background(Color.clear)
        }
            
        .navigationBarTitle("\(countryName)", displayMode: .inline)
    }
}

struct States_Previews: PreviewProvider {
    static var previews: some View {
        States(countryName: "usa")
    }
}
