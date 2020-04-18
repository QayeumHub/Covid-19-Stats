//
//  LatestStatsByCountryTotal.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation


// MARK: - TopLevel
struct StatesTotal: Identifiable, Decodable {
    var id = UUID()
    var data: DataClass?
    
    enum CodingKeys: String, CodingKey {
        case data
    }
    
    
}

// MARK: - DataClass
struct DataClass : Identifiable, Decodable {
    var id = UUID()
    var lastChecked: String?
    var covid19Stats: [StateStat]?
    enum CodingKeys: String, CodingKey {
        case  lastChecked, covid19Stats
    }
}

// MARK: - Covid19Stat
struct StateStat: Identifiable, Decodable {
    var id = UUID()
    var city, province: String?
    var country: String?
    var lastUpdate: String?
    var keyID: String?
    var confirmed, deaths, recovered: Int?
    
    enum CodingKeys: String, CodingKey {
        case city, province,country,lastUpdate,keyID,confirmed, deaths, recovered
    }
}

