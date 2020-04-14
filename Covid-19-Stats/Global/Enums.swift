//
//  Enums.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

enum EndPoints {
    case countriesEffected
    case coutriesByCases
    case worldsStats
    var value:String {
        switch self {
        case.worldsStats:
            return "https://coronavirus-monitor.p.rapidapi.com/coronavirus/worldstat.php"
        case .countriesEffected:
            return "https://coronavirus-monitor.p.rapidapi.com/coronavirus/affected.php"
        case .coutriesByCases:
            return "https://coronavirus-monitor.p.rapidapi.com/coronavirus/cases_by_country.php"
        }
    }
}
