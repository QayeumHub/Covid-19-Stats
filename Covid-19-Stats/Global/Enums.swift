//
//  Enums.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

enum EndPoints {
    case countryStats (countryName: String)
    case coutriesByCases
    case worldsStats
    var value:String {
        switch self {
        case.worldsStats:
            return "https://api.thevirustracker.com/free-api?global=stats"
        case .coutriesByCases:
                return "https://covid-193.p.rapidapi.com/statistics"
        case .countryStats(let counrtyName):
            var country = counrtyName.replacingOccurrences(of: "-", with:" ")
            if country.lowercased() == "uk"{
                country  = "United Kingdom"
            }else if country.lowercased() == "s korea"{
                country = "Korea, South"
            }
            return "https://covid19-api.weedmark.systems/api/v1/stats?country=\(country.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!)"
        }
    }
}
