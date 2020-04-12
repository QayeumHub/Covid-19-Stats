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
    var total_cases: String?
    var total_deaths: String?
    var total_recovered: String?
    var new_cases: String?
    var new_deaths: String?
    var statistic_taken_at: String?
}
