//
//  JohnHopkinByState.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
struct JohnHopkinByState:Decodable {
    var state: String?
    var usa_deaths: [UsaDeath]?
    var usa_casesByState: [UsaCasesByState]?
    var ads: String?
}

// MARK: - UsaCasesByState
struct UsaCasesByState:Decodable{
    var state_name: String?
    var cases_number: String?
    var record_date: String?
}

// MARK: - UsaDeath
struct UsaDeath:Decodable {
    var state_name: String?
    var death_cases: String?
    var record_date: String?
}
