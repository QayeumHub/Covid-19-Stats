//
//  LatestStatsByCountryTotal.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

//struct CountryTotal: Identifiable, Decodable {
//    var id:Int?
//    var countryStats: [CountryStats]?
//}
//
//struct CountryStats : Identifiable, Decodable {
//    var id:Int?
//    var city: String?
//    var province: String?
//    var country: String?
//    var lastUpdate: String?
//    var keyID: String?
//    var confirmed: Int?
//    var deaths: Int?
//    var recovered: Int?
//}


struct CountryTotal: Identifiable, Decodable {
    var id:Int?
    var country: Country?
}

// MARK: - DataClass
struct Country: Identifiable, Decodable {
    var id:Int?
    var lastChecked: String?
    var countryStats: [CountryStats]?
}

// MARK: - Covid19Stat
struct CountryStats : Identifiable, Decodable {
    var id:Int?
    var city, province: String?
    var country: String?
    var lastUpdate: String?
    var keyID: String?
    var confirmed, deaths, recovered: Int?
}
