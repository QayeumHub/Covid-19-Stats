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
    
    init(endPoints: EndPoints){
        self.statsService = WorldStatsService()
        getWorldTotalData(endPoints: endPoints)
    }
    
    var totalCases:String{
        if let data = data.worldTotal{
            return data.totalCases!.formatNumber()
        }else{
            return String()
        }
    }
    
    var totalRecovered:String{
        if let data = data.worldTotal{
            return  data.totalRecovered!.formatNumber()
        }else{
            return String()
        }
    }
    
    var totalUnresolved:String{
        if let data = data.worldTotal{
            return data.totalUnresolved!.formatNumber()
        }else{
            return String()
        }
    }
    
     var totalDeaths:String{
         if let data = data.worldTotal{
             return data.totalDeaths!.formatNumber()
         }else{
             return String()
         }
     }
     
    var totalNewCasesToday:String{
        if let data = data.worldTotal{
            return data.totalNewCasesToday!.formatNumber()
        }else{
            return String()
        }
    }
    
    var totalNewDeathsToday:String{
        if let data = data.worldTotal{
            return data.totalNewDeathsToday!.formatNumber()
        }else{
            return String()
        }
    }
    
    var totalActiveCases:String{
        if let data = data.worldTotal{
            return data.totalActiveCases!.formatNumber()
        }else{
            return String()
        }
    }
    
    var totalSeriousCases:String{
        if let data = data.worldTotal{
            return String(format: "%ld", data.totalSeriousCases!)
        }else{
            return String()
        }
    }
    var totalAffectedCountries:String{
        if let data = data.worldTotal{
            return String(format: "%ld", data.totalAffectedCountries!)
        }else{
            return String()
        }
    }
    
    
    
    
    func getWorldTotalData(endPoints: EndPoints) {
        statsService.getWorldStats(endPoints:endPoints) {(statsData) in
            DispatchQueue.main.async {
                if let statsData = statsData {
                    self.data = statsData
                }
            }
        }
    }
}
