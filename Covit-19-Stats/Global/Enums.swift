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
    case countryByNameAndDate(country:String, date:String)
    case coutriesByCases
    case johnHopkicByState(state:String)
    case usa
    case latestStatsByCoutry(country:String)
    case worldsStats
    var value:String {
        switch self {
        case.worldsStats:
            return "https://coronavirus-monitor.p.rapidapi.com/coronavirus/worldstat.php"
        case .countriesEffected:
            return "https://coronavirus-monitor.p.rapidapi.com/coronavirus/affected.php"
        case .countryByNameAndDate(let country, let date):
            return "https://coronavirus-monitor.p.rapidapi.com/coronavirus/history_by_particular_country_by_date.php?country=\(country)&date=\(date)"
        case .coutriesByCases:
            return "https://coronavirus-monitor.p.rapidapi.com/coronavirus/cases_by_country.php"
        case .johnHopkicByState(let state):
            return "https://coronavirus-monitor.p.rapidapi.com/coronavirus/johns_hopkins_latest_usa_statistic_by_state.php?state=\(state)"
        case .usa:
            return "https://coronavirus-monitor.p.rapidapi.com/coronavirus/united_states_cases.php"
        case .latestStatsByCoutry(let country):
            return "https://coronavirus-monitor.p.rapidapi.com/coronavirus/latest_stat_by_country.php?country=\(country)"
        }
    }
}
