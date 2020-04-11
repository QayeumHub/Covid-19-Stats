//
//  WithCasesViewModel.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class WithCasesViwModel: ObservableObject{
    
    private var service: CountriesWithCasesService!
    @Published var data = CoutriesByCases()
    
    init(endPoints:EndPoints){
        self.service = CountriesWithCasesService()
        getDate(endPoints: endPoints)
    }
    
    var countryArrDetails:[CountriesStat]{
        if let data = data.countries_stat {
            return data
        }else{
            return [CountriesStat]()
        }
    }
    
    var createdDate: String {
        if let date = data.statistic_taken_at {
            return Date().formatDate(dateStr:date)
        }else{
            return String()
        }
    }
    
    
    func getDate(endPoints:EndPoints){
        service.getData(endPoints: endPoints) { (statsData) in
            DispatchQueue.main.async {
                self.data = statsData!
            }
        }
    }
}



