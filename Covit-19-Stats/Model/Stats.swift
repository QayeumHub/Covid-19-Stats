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
    var affectedCountries: [String]
    var statisticTakenAt: String
}

struct StatByCountryNameAndDate: Decodable {
    var id: String
    var countryName: String
    var totalCases: String
    var newCases: String
    var activeCases: String
    var totalDeaths: String
    var newDeaths: String
    var totalRecovered: String
    var seriousCritical: String
    var totalCasesPer1M: String
    var recordDate: String
}


struct CoutriesByCases: Decodable {
    var countriesStat: [CountriesStat]
    var statisticTakenAt: String
}

// MARK: - CountriesStat
struct CountriesStat: Decodable{
    var countryName: String
    var cases: String
    var deaths: String
    var region: String
    var totalRecovered: String
    var newDeaths: String
    var newCases: String
    var seriousCritical: String
    var activeCases: String
    var totalCasesPer1MPopulation: String
}


struct JohnHopkinByState:Decodable {
    var state: String
    var usaDeaths: [UsaDeath]
    var usaCasesByState: [UsaCasesByState]
    var ads: String
}

// MARK: - UsaCasesByState
struct UsaCasesByState:Decodable{
    var stateName: String
    var casesNumber: String
    var recordDate: String
}

// MARK: - UsaDeath
struct UsaDeath:Decodable {
    var stateName: String
    var deathCases: String
    var recordDate: String
}


struct LatestStatsByCountryTotal: Decodable {
    var country: String
    var latestStatByCountry: [ByCountryTotal]
}

// MARK: - LatestStatByCountry
struct ByCountryTotal:Decodable {
    var id: String
    var countryName: String
    var totalCases: String
    var newCases: String
    var activeCases: String
    var totalDeaths: String
    var newDeaths: String
    var totalRecovered: String
    var seriousCritical: String
    var totalCasesPer1M: String
    var recordDate: String
}
