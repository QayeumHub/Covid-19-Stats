//
//  MainTableView.swift
//  Covid-19-Stats
//
//  Created by Abdul Meraj on 4/11/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import SwiftUI

struct MainTableView: View {
    var countries: [Countries]!
    init(countries:[Countries]){
        self.countries = countries
    }
 
    var body: some View {
            VStack(alignment: .leading){
                List{
                    ForEach(countries.indices, id: \.self) { i in

                            HStack(){
                                NavigationLink(destination:LazyView(States(countryName: "\(self.countries[i].Country!)"))){
                                Text("\(self.countries[i].Country!)").font(Font.system(size: 16)).frame(maxWidth:140, alignment: .center)
                                VStack(spacing:3){
                                    HStack(){
                                        Text("Total Cases:").frame(width:100, alignment: .leading)
                                        Text("\(self.countries[i].TotalConfirmed!)").frame(width:100, alignment: .leading)
                                    }
                                    HStack(){
                                        Text("Total Deaths:").frame(width:100, alignment: .leading)
                                        Text("\(self.countries[i].TotalDeaths!)").frame(width:100, alignment: .leading).foregroundColor(.red)
                                    }
                                    HStack(){
                                        Text("Total Recovered:").frame(width:100, alignment: .leading)
                                        Text("\(self.countries[i].TotalRecovered!)").frame(width:100, alignment: .leading).foregroundColor(.green)
                                    }

                                    HStack(){
                                        Text("New Cases:").frame(width:100, alignment: .leading)
                                        Text("\(self.countries[i].NewConfirmed!)").frame(width:100, alignment: .leading)
                                    }
                                    HStack(){
                                        Text("New Deaths:").frame(width:100, alignment: .leading)
                                        Text("\(self.countries[i].NewDeaths!)").frame(width:100, alignment: .leading).foregroundColor(.red)
                                    }
                                    HStack(){
                                        Text("New Recovered:").frame(width:100, alignment: .leading)
                                        Text("\(self.countries[i].NewRecovered!)").frame(width:100, alignment: .leading).foregroundColor(.green)
                                    }
                                    }

                            }
                        }

                    }.listRowBackground(Color.clear).frame(alignment: Alignment.leading).font(Font.custom("HelveticaNeue-Light", size: 12))
                }.frame(maxHeight: 800, alignment: .top)
            }
    }
}
struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}
//struct MainTableView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainTableView()
//    }
//}
