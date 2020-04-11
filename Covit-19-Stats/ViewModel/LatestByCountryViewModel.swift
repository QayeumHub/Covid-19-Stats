//
//  LatestByCountryViewModel.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class LatestByCountryViewModel: ObservableObject{
    
    private var service: LatestByCountryTotalService!
    @Published var data = LatestStatsByCountryTotal()
    
    init(endPoints:EndPoints){
        self.service = LatestByCountryTotalService()
        getData(endPoints: endPoints)
    }
    
    var country: String{
        if let data = data.country {
            return data
        }else{
            return String()
        }
    }
    
    var coutryTotalArr:[ByCountryTotal]{
        if let data = data.latest_stat_by_country{
            return data
        }else{
            return [ByCountryTotal]()
        }
    }
    
    
    func getData(endPoints: EndPoints){
        service.getData(endPoints: endPoints) { (statsData) in
            DispatchQueue.main.async {
                self.data = statsData!
            }
        }
    }
}