//
//  LatestByCountryViewModel.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class LatestByCountryViewModel: ObservableObject{
    
    private var service: LatestByCountryTotalService!
    @Published var data = LatestStatsByCountryTotal()
    
    init(endPoints:EndPoints){
        self.service = LatestByCountryTotalService()
        
    }
    
    
    
    func getData(endPoints: EndPoints){
        service.getData(endPoints: endPoints) { (statsData) in
            DispatchQueue.main.async {
                self.data = statsData!
            }
        }
    }
}
