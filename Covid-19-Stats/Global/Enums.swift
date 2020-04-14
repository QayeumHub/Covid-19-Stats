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
            return "https://api.covid19api.com/summary"
        case .coutriesByCases:
                return "https://coronavirus-monitor.p.rapidapi.com/coronavirus/cases_by_country.php"
        case .countryStats(let counrtyName):
            return "https://covid19-api.weedmark.systems/api/v1/stats?country=\(counrtyName)"

        }
    }
}
