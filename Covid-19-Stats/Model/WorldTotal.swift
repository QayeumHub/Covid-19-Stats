//
//  WorldTotal.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

struct WorldTotal : Identifiable, Decodable {
    var id:Int?
    var Global: Global?
    var Countries: [Countries]?
    var Date: String?
}

// MARK: - Country
struct Countries: Identifiable, Decodable {
    var id:Int?
    var Country, CountryCode, Slug: String?
    var NewConfirmed, TotalConfirmed, NewDeaths, TotalDeaths: Int?
    var NewRecovered, TotalRecovered: Int?
    var Date: String?
}

// MARK: - Global
struct Global: Identifiable, Decodable {
    var id:Int?
    var NewConfirmed, TotalConfirmed, NewDeaths, TotalDeaths: Int?
    var NewRecovered, TotalRecovered: Int?
}


