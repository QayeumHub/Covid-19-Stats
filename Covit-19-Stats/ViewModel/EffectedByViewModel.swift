//
//  EffectedByViewModel.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class EffectedByViewModel:ObservableObject{
    
    private var service:CountriesEffectedByService!
    @Published var data = CountriesEffected()
    
    init(endPoints:EndPoints){
        self.service = CountriesEffectedByService()
        getData(endPoints: endPoints)
    }
    
    
    
    func getData(endPoints:EndPoints){
        service.getData(endPoints: endPoints) {(statsData) in
            DispatchQueue.main.async {
                self.data = statsData!
            }
        }
    }
}
