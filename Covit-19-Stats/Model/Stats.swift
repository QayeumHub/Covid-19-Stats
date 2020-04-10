//
//  Stats.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation


struct WorldTotal: Decodable {
    var total_cases: String?
    var total_deaths: String?
    var total_recovered: String?
    var new_cases: String?
    var new_deaths: String?
    var statistic_taken_at: String?
}

struct CountriesEffected: Decodable {
    var affectedCountries: [String]?
    var statisticTakenAt: String?
}

struct StatByCountryNameAndDate: Decodable {
    var id: String?
    var country_name: String?
    var total_cases: String?
    var new_cases: String?
    var active_cases: String?
    var total_deaths: String?
    var new_deaths: String?
    var total_recovered: String?
    var serious_critical: String?
    var total_cases_per1M: String?
    var recordDate: String?
}


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
    var total_cases_per1M_population: String?
}


struct JohnHopkinByState:Decodable {
    var state: String?
    var usa_deaths: [UsaDeath]?
    var usa_casesByState: [UsaCasesByState]?
    var ads: String?
}

// MARK: - UsaCasesByState
struct UsaCasesByState:Decodable{
    var state_name: String?
    var cases_number: String?
    var record_date: String?
}

// MARK: - UsaDeath
struct UsaDeath:Decodable {
    var state_name: String?
    var death_cases: String?
    var record_date: String?
}


struct LatestStatsByCountryTotal: Decodable {
    var country: String?
    var latest_stat_by_country: [ByCountryTotal]?
}

// MARK: - LatestStatByCountry
struct ByCountryTotal:Decodable {
    var id: String?
    var country_name: String?
    var total_cases: String?
    var new_cases: String?
    var active_cases: String?
    var total_deaths: String?
    var new_deaths: String?
    var total_recovered: String?
    var serious_critical: String?
    var total_cases_per1M: String?
    var record_date: String?
}
