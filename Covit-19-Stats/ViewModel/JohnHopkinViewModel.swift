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
    
    
    func getData (endPoints:EndPoints){
        service.getData(endPoints: endPoints) { (statsData) in
            DispatchQueue.main.async {
                self.data = statsData!
            }
        }
    }
}
