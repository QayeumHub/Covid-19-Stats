//
//  CountriesEffected.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
struct CountriesEffected: Decodable {
    var affectedCountries: [String]?
    var statisticTakenAt: String?
}
