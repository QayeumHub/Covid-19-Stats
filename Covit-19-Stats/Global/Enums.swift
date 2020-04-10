//
//  Enums.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

enum UrlStr:String{
    case countriesEffected = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/affected.php"
    case countryByName = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/cases_by_particular_country.php?country=italy"
    case countryByNameAndDate = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/history_by_particular_country_by_date.php?country=italy&date=2020-04-09"
    case coutriesByCases = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/cases_by_country.php"
    case JohnHopkicByState = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/johns_hopkins_latest_usa_statistic_by_state.php?state=California"
    case usa = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/united_states_cases.php"
    case latestStatsByCoutry = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/latest_stat_by_country.php?country=usa"
    case worldsStats = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/worldstat.php"
}

