//
//  Enums.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

enum UrlStr: String{
    case effectedCountries = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/affected.php"
    case byCountry = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/cases_by_particular_country.php?country=%3Crequired%3E"
    case byCountryAndDate = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/history_by_particular_country_by_date.php?country=%3Crequired%3E&date=%3Crequired%3E"
    case casesByCountry = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/cases_by_country.php"
    case johnHopkinByState = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/johns_hopkins_latest_usa_statistic_by_state.php?state=%3Crequired%3E"
    case usa = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/united_states_cases.php"
    case world = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/worldstat.php"
    
}
