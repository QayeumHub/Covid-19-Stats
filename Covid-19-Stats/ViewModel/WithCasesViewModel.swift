//
//  WithCasesViewModel.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class WithCasesViwModel: ObservableObject{
    
    private var service: CountriesWithCasesService!
    @Published var data = CoutriesByCases()
    @Published var showProgress = true
    
    init(endPoints:EndPoints){
        self.service = CountriesWithCasesService()
        getDate(endPoints: endPoints)
    }
    
    
  
    
    var countryArrDetails:[Response]{
        if let data = data.response {
            let sortedData = data.sorted(by: {($0.cases?.total)! > ($1.cases?.total)!})
            return sortedData.filter({$0.country?.lowercased() != "all"})
        }else{
            return [Response]()
        }
    }

    func getDate(endPoints:EndPoints){
        service.getData(endPoints: endPoints) { (statsData) in
            DispatchQueue.main.async {
                self.showProgress = true
                if let statsData = statsData {
                 self.data = statsData
                 self.showProgress = false
                }else{
                    self.showProgress = true
                }
            }
        }
    }
}



