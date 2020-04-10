//
//  Stats.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

struct Stats: Decodable {
    
    
}


struct WorldTotal {
    var totalCases: String
    var totalDeaths: String
    var totalRecovered: String
    var newCases: String
    var newDeaths: String
    var statisticTakenAt: String
}

struct CountriesEffected {
    var affectedCountries: [String]
    var statisticTakenAt: String
}

struct StatByCountryNameAndDate {
    var id: String
    var countryName: String
    var totalCases: String
    var newCases: String
    var activeCases: String
    var totalDeaths: String
    var newDeaths: String
    var totalRecovered: String
    var seriousCritical: String
    var region: NSNull
    var totalCasesPer1M: String
    var recordDate: String
}


struct CoutriesByCases {
    var countriesStat: [CountriesStat]
    var statisticTakenAt: String
}

// MARK: - CountriesStat
struct CountriesStat {
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


struct JohnHopkinByState {
    var state: String
    var usaDeaths: [UsaDeath]
    var usaCasesByState: [UsaCasesByState]
    var ads: String
}

// MARK: - UsaCasesByState
struct UsaCasesByState {
    var stateName: String
    var casesNumber: String
    var recordDate: String
}

// MARK: - UsaDeath
struct UsaDeath {
    var stateName: String
    var deathCases: String
    var recordDate: String
}


struct LatestStatsByCountryTotal {
    var country: String
    var latestStatByCountry: [ByCountryTotal]
}

// MARK: - LatestStatByCountry
struct ByCountryTotal {
    var id: String
    var countryName: String
    var totalCases: String
    var newCases: String
    var activeCases: String
    var totalDeaths: String
    var newDeaths: String
    var totalRecovered: String
    var seriousCritical: String
    var region: NSNull
    var totalCasesPer1M: String
    var recordDate: String
}
