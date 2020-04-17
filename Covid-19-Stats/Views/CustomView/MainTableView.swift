//
//  MainTableView.swift
//  Covid-19-Stats
//
//  Created by Abdul Meraj on 4/11/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import SwiftUI

struct MainTableView: View {
    var countries: [Response]!
    init(countries:[Response]){
        self.countries = countries
    }
    

    var body: some View {
            VStack(alignment: .leading){
                List{
                    ForEach(countries.indices, id: \.self) { i in
                        HStack(){
                            NavigationLink(destination:LazyView(States(countryName: "\(self.countries[i].country ?? "-")"))){
                                Text("\(self.countries[i].country ?? "-")").font(Font.system(size: 16)).frame(maxWidth:140, alignment: .center)
                                VStack(spacing:3){
                                    HStack(){
                                        Text("Total Cases:").frame(width:100, alignment: .leading)
                                        Text("\((self.countries[i].cases?.total!.formatNumber() ?? "0"))").frame(width:100, alignment: .leading)
                                    }
                                    HStack(){
                                        Text("Total Deaths:").frame(width:100, alignment: .leading)
                                        Text("\((self.countries[i].deaths?.total?.formatNumber() ?? "0"))").frame(width:100, alignment: .leading).foregroundColor(.red)
                                    }
                                    HStack(){
                                        Text("Total Recovered:").frame(width:100, alignment: .leading)
                                        Text("\((self.countries[i].cases?.recovered?.formatNumber() ?? "0"))").frame(width:100, alignment: .leading).foregroundColor(.green)
                                    }
                                    HStack(){
                                        Text("Critical:").frame(width:100, alignment: .leading)
                                        Text("\((self.countries[i].cases?.critical?.formatNumber() ?? "0"))").frame(width:100, alignment: .leading).foregroundColor(.red)
                                    }
                                    HStack(){
                                        Text("New Cases:").frame(width:100, alignment: .leading)
                                        Text("\(self.countries[i].cases?.new ?? "0")").frame(width:100, alignment: .leading)
                                    }
                                    HStack(){
                                        Text("New Deaths:").frame(width:100, alignment: .leading)
                                        Text("\(self.countries[i].deaths?.new ?? "0")").frame(width:100, alignment: .leading).foregroundColor(.red)
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
