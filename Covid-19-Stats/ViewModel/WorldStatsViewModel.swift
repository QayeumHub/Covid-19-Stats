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
        if let data = data.Global?.TotalConfirmed{
            return data.formatNumber()
        }else{
            return String()
        }
    }
    
    var totalRecovered:String{
        if let data = data.Global?.TotalRecovered{
            return  data.formatNumber()
        }else{
            return String()
        }
    }
     var totalDeaths:String{
        if let data = data.Global?.TotalDeaths{
             return data.formatNumber()
         }else{
             return String()
         }
     }

    var totalNewCasesToday:String{
        if let data = data.Global?.NewConfirmed{
            return data.formatNumber()
        }else{
            return String()
        }
    }

    var totalNewDeathsToday:String{
        if let data = data.Global?.NewDeaths{
            return data.formatNumber()
        }else{
            return String()
        }
    }

    var totalNewRecoderedToday:String{
        if let data = data.Global?.NewRecovered{
            return data.formatNumber()
        }else{
            return String()
        }
    }
    
    var reportDate:String{
        if let data = data.Date{
            return Date().formatDate(dateStr: data)
        }else{
            return String()
        }
    }

    var coutriesTotal:[Countries]{
        if let data = data.Countries{
            let datasorted = data.sorted(by: {$0.TotalConfirmed! > $1.TotalConfirmed!})
            return datasorted
        }else{
            return [Countries]()
        }
    }
   
    
    
    
    private func getWorldTotalData(endPoints: EndPoints) {
        statsService.getWorldStats(endPoints:endPoints) {(statsData) in
            DispatchQueue.main.async {
                if let statsData = statsData {
                    self.data = statsData
                }
            }
        }
    }
}
