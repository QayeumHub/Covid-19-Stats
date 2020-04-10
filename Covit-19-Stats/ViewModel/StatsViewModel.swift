//
//  Stats.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class StatsViewModel: ObservableObject{
    
    private var statsService:StatsService!
    @Published var statsArr = [Stats]()
    
    init(){
        self.statsService = StatsService()
    }
    
    func getData(url: UrlStr) {
        self.statsService.getStats(state: "", urlStr: url) { (statsArr) in
            
        }
    }
}
