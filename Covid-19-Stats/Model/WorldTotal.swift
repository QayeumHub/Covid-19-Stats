//
//  WorldTotal.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

struct WorldTotal: Identifiable, Decodable {
    var id:Int?
    var results: [WorldStats]?
}

// MARK: - Result
struct WorldStats : Identifiable, Decodable {
    var id:Int?
    var total_cases, total_recovered, total_unresolved, total_deaths: Int?
    var total_new_cases_today, total_new_deaths_today, total_active_cases, total_serious_cases: Int?
    var total_affected_countries: Int?

}

