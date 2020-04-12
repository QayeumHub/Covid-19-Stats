//
//  States.swift
//  Covid-19-Stats
//
//  Created by Abdul Meraj on 4/12/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import SwiftUI

struct States: View {
    var countryName:String
    
    init(countryName:String){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().backgroundColor = .black
        self.countryName = countryName
    }
    
    var body: some View {
        NavigationView{
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
             .navigationBarTitle("States Covit-91 Stats", displayMode: .inline)
        }
    }
}

struct States_Previews: PreviewProvider {
    static var previews: some View {
        States(countryName: "String")
    }
}

