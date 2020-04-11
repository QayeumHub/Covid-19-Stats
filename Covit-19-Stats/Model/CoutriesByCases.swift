//
//  CoutriesByCases.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

struct CoutriesByCases: Decodable {
    var countries_stat: [CountriesStat]?
    var statistic_taken_at: String?
}

// MARK: - CountriesStat
struct CountriesStat: Decodable{
    var country_name: String?
    var cases: String?
    var deaths: String?
    var region: String?
    var total_recovered: String?
    var new_deaths: String?
    var new_cases: String?
    var serious_critical: String?
    var active_cases: String?
    var total_cases_per_1m_population: String?
}
