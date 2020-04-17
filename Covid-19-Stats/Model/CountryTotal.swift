//
//  LatestStatsByCountryTotal.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation


// MARK: - TopLevel
struct CountryTotal: Identifiable, Decodable {
    var id:Int?
    var error: Bool?
    var statusCode: Int?
    var message: String?
    var data: DataClass?
}

// MARK: - DataClass
struct DataClass : Identifiable, Decodable {
    var id:Int?
    var lastChecked: String?
    var covid19Stats: [StateStat]?
}

// MARK: - Covid19Stat
struct StateStat: Identifiable, Decodable {
    var id:Int?
    var city, province: String?
    var country: String?
    var lastUpdate: String?
    var keyID: String?
    var confirmed, deaths, recovered: Int?
}

