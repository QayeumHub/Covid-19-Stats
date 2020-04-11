//
//  ByCountryNameAndDate.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class ByCountryNameAndDateViewModel: ObservableObject{
    
    private var service:CountriesNameDateService!
    @Published var data = StatByCountryNameAndDate()
    
    init(endPoints:EndPoints){
        self.service = CountriesNameDateService()
        getData(endPoints: endPoints)
    }
    
    var country:String{
        if let data = data.country {
            return data
        }else{
            return String()
        }
    }
    var countryByDateArr: [StatByDate]{
        if let data = data.stat_by_country{
            return data
        }else{
            return [StatByDate]()
        }
    }
   
    
    
    func getData(endPoints:EndPoints){
        service.getData(endPoints: endPoints) { (statsData) in
            DispatchQueue.main.async {
                self.data = statsData!
            }
        }
    }
}
