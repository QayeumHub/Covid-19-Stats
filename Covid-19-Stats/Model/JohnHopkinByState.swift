//
//  JohnHopkinByState.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
struct JohnHopkinByState:Hashable, Decodable {
    var id:String? = UUID().uuidString
    var state: String?
    var usa_deaths: [UsaDeath]?
    var usa_cases_by_state: [UsaCasesByState]?
    var ads: String?
}

// MARK: - UsaCasesByState
struct UsaCasesByState:Hashable, Decodable {
    var id:String? = UUID().uuidString
    var state_name: String?
    var cases_number: String?
    var record_date: String?
}

// MARK: - UsaDeath
struct UsaDeath:Hashable, Decodable {
    var id:String? = UUID().uuidString
    var state_name: String?
    var death_cases: String?
    var record_date: String?
}
