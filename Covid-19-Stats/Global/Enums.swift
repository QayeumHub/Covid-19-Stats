//
//  Enums.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

enum EndPoints {
    case countryStats (date: String, countryName: String)
    case coutriesByCases
    case worldsStats
    var value:String {
        switch self {
        case.worldsStats:
            return "https://api.thevirustracker.com/free-api?global=stats"
        case .coutriesByCases:
                return "https://covid-193.p.rapidapi.com/statistics"
        case .countryStats(let date, let counrtyName):
            return "https://covid-193.p.rapidapi.com/history?day=\(date)&country=\(counrtyName)"
            //"https://covid-193.p.rapidapi.com/history?day=2020-04-05&country=usa"

        }
    }
}
