//
//  JohnHopkinViewModel.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class JohnHopkinViewModel: ObservableObject{
    
    private var service: JohnHopkinStatsService!
    @Published var data = JohnHopkinByState()
    
    init(endPoints:EndPoints){
        self.service = JohnHopkinStatsService()
        getData(endPoints: endPoints)
    }
    
    var stateName:String {
        if let data = data.state{
            return data
        }else{
            return String()
        }
    }
    
    var stateCasesArr:[UsaCasesByState]{
        if let data = data.usa_cases_by_state{
            return data
        }else{
            return [UsaCasesByState]()
        }
    }
    
    var stateDeathsArr:[UsaDeath]{
        if let data = data.usa_deaths{
            return data
        }else{
            return [UsaDeath]()
        }
    }
    
    var ad:String {
        if let data = data.ads{
            return data
        }else{
            return String()
        }
    }
    
    
    func getData (endPoints:EndPoints){
        service.getData(endPoints: endPoints) { (statsData) in
            DispatchQueue.main.async {
                self.data = statsData!
            }
        }
    }
}
