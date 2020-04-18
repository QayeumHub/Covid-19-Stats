//
//  CoutriesByCases.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

struct CoutriesByCases: Identifiable, Decodable {
    var id = UUID()
    var response: [Response]?
    
    enum CodingKeys : String, CodingKey {
        case response
    }
    
}

// MARK: - Response
struct Response : Identifiable, Decodable {
    var id:Int?
    var country: String?
    var cases: Cases?
    var deaths: Deaths?
    var tests: Tests?
    var day: String?
    var time: String?
}

// MARK: - Cases
struct Cases : Identifiable, Decodable {
    var id:Int?
    var new: String?
    var active, critical, recovered, total: Int?
}

// MARK: - Deaths
struct Deaths : Identifiable, Decodable {
    var id:Int?
    var new: String?
    var total: Int?
}

// MARK: - Tests
struct Tests: Identifiable, Decodable {
    var id:Int?
    var total: Int?
}



