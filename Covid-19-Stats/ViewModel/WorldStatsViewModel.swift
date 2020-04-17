//
//  Stats.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class WorldStatsViewModel: ObservableObject{
    
    private var statsService: WorldStatsService!
    @Published var data = WorldTotal()
    @Published var showProgress = true
    
    init(endPoints: EndPoints){
        self.statsService = WorldStatsService()
        getWorldTotalData(endPoints: endPoints)
    }
 

    var totalCases:String{
        if let data = data.results?[0].total_cases{
            return data.formatNumber()
        }else{
            return String()
        }
    }

    var totalRecovered:String{
        if let data = data.results?[0].total_recovered{
            return  data.formatNumber()
        }else{
            return String()
        }
    }
     var totalDeaths:String{
        if let data = data.results?[0].total_deaths{
             return data.formatNumber()
         }else{
             return String()
         }
     }

    var totalNewCasesToday:String{
        if let data = data.results?[0].total_new_cases_today{
            return data.formatNumber()
        }else{
            return String()
        }
    }

    var totalNewDeathsToday:String{
        if let data = data.results?[0].total_new_deaths_today{
            return data.formatNumber()
        }else{
            return String()
        }
    }
    

    var totalSeriousCases:String{
        if let data = data.results?[0].total_serious_cases{
            return data.formatNumber()
        }else{
            return String()
        }
    }
    
    var totalActiveCases:String{
        if let data = data.results?[0].total_active_cases{
            return data.formatNumber()
        }else{
            return String()
        }
    }
    


    
    
    
    private func getWorldTotalData(endPoints: EndPoints) {
        statsService.getWorldStats(endPoints:endPoints) {(statsData) in
            DispatchQueue.main.async {
                self.showProgress = true
                if let statsData = statsData {
                    self.data = statsData
                    self.showProgress = false
                }else{
                    self.showProgress = true
                }
            }
        }
    }
}
