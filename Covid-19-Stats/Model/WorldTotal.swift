//
//  WorldTotal.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

//struct WorldTotal: Identifiable, Decodable {
//    var id:Int?
//    var total_cases: String?
//    var total_deaths: String?
//    var total_recovered: String?
//    var new_cases: String?
//    var new_deaths: String?
//    var statistic_taken_at: String?
//}


struct WorldTotal: Identifiable, Decodable {
    var id:Int?
    var worldTotal: Result?
}

// MARK: - Result
struct Result: Identifiable, Decodable {
    var id:Int?
    var totalCases, totalRecovered, totalUnresolved, totalDeaths: Int?
    var totalNewCasesToday, totalNewDeathsToday, totalActiveCases, totalSeriousCases: Int?
    var totalAffectedCountries: Int?
    
    enum CodingKeys: String, CodingKey {
        case totalCases = "total_cases"
        case totalRecovered = "total_recovered"
        case totalUnresolved = "total_unresolved"
        case totalDeaths = "total_deaths"
        case totalNewCasesToday = "total_new_cases_today"
        case totalNewDeathsToday = "total_new_deaths_today"
        case totalActiveCases = "total_active_cases"
        case totalSeriousCases = "total_serious_cases"
        case totalAffectedCountries = "total_affected_countries"
    }
}
