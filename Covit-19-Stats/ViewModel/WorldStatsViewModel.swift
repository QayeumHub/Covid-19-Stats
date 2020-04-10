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
    @Published var statsData = WorldTotal()
    
    init(endPoints: EndPoints){
        self.statsService = WorldStatsService()
        getWorldTotalData(endPoints: endPoints)
    }
    
    var totalCases:String {
        if let totalCases = statsData.total_cases {
            return totalCases
        }else{
            return String()
        }
    }
    var totalRecovered:String {
        if let recover  = statsData.total_recovered {
            return recover
        }else{
              return String()
        }
    }
    
    var totalDeaths:String {
        if let deaths  = statsData.total_deaths {
            return deaths
        }else{
              return String()
        }
    }
    
    var newCases:String {
        if let new  = statsData.new_cases {
            return new
        }else{
              return String()
        }
    }
    
    var newDeaths:String {
        if let deaths  = statsData.new_deaths {
            return deaths
        }else{
              return String()
        }
    }
    
    var createdDate: String {
        if let date = statsData.statistic_taken_at {
            let f = DateFormatter()
            f.dateFormat = "yyyy-MM-dd HH:mm:ss"
            f.timeZone = TimeZone(abbreviation: "UTC")
            let date = f.date(from: date)
            f.dateFormat = "MM/dd/yyyy hh:mm a"
            f.timeZone = TimeZone.current
            return f.string(from: date!)
        }else{
            return String()
        }
    }
    
    
    func getWorldTotalData(endPoints: EndPoints) {
        statsService.getWorldStats(endPoints:endPoints) {(statsData) in
            DispatchQueue.main.async {
                self.statsData = statsData!
            }
        }
    }
}
