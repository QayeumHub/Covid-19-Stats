//
//  WithCasesViewModel.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class withCasesViwModel: ObservableObject{
    
    private var service: CountriesWithCasesService!
    @Published var data = CoutriesByCases()
    
    init(endPoints:EndPoints){
        self.service = CountriesWithCasesService()
        getDate(endPoints: endPoints)
    }
    
    
    
    func getDate(endPoints:EndPoints){
        service.getData(endPoints: endPoints) { (statsData) in
            DispatchQueue.main.async {
                self.data = statsData!
            }
        }
    }
}



