//
//  WorldTotal.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

struct WorldTotal: Identifiable, Decodable {
    var id = UUID()
    var results: [WorldStats]?
    enum CodingKeys: String, CodingKey {
        case results
    }
}

// MARK: - Result
struct WorldStats : Identifiable, Decodable {
    var id = UUID()
    var total_cases, total_recovered, total_unresolved, total_deaths: Int?
    var total_new_cases_today, total_new_deaths_today, total_active_cases, total_serious_cases: Int?
    var total_affected_countries: Int?
    enum CodingKeys: String , CodingKey {
        case total_cases, total_recovered, total_unresolved, total_deaths
        case total_new_cases_today, total_new_deaths_today, total_active_cases, total_serious_cases
        case total_affected_countries
    }

}

