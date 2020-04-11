//
//  EffectedByViewModel.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class EffectedByViewModel:ObservableObject{
    
    private var service:CountriesEffectedByService!
    @Published var data = CountriesEffected()
    
    init(endPoints:EndPoints){
        self.service = CountriesEffectedByService()
        getData(endPoints: endPoints)
    }
    
    var coutriesEffectedArr: [String]{
        if let arr = data.affected_countries{
            return arr
        }else{
            return [String]()
        }
    }
    
    var createdDate: String {
        if let date = data.statistic_taken_at {
            return Date().formatDate(dateStr:date)
        }else{
            return String()
        }
    }
    
    func getData(endPoints:EndPoints){
        service.getData(endPoints: endPoints) {(statsData) in
            DispatchQueue.main.async {
                self.data = statsData!
            }
        }
    }
}
