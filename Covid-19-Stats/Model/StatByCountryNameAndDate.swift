//
//  StatByCountryNameAndDate.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

struct StatByCountryNameAndDate: Hashable, Decodable {
    var id = UUID()
    var country: String?
    var stat_by_country:[StatByDate]?
}

struct StatByDate: Hashable, Decodable {
    var id:String? = UUID().uuidString
    var country_name: String?
    var total_cases: String?
    var new_cases: String?
    var active_cases: String?
    var total_deaths: String?
    var new_deaths: String?
    var total_recovered: String?
    var serious_critical: String?
    var total_cases_per_1m: String?
    var record_date: String?
}


