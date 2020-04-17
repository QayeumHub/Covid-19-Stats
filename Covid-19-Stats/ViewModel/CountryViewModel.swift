//
//  LatestByCountryViewModel.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class CountryViewModel: ObservableObject{
    
    private var service: ByCountryTotalService!
    @Published var data = CountryTotal()
    
    init(endPoints:EndPoints){
        self.service = ByCountryTotalService()
        getData(endPoints: endPoints)
    }
    
    
    func getData(endPoints: EndPoints){
        service.getData(endPoints: endPoints) { (statsData) in
            DispatchQueue.main.async {
                if let statsData = statsData {
                  self.data = statsData
                }
            }
        }
    }
}
