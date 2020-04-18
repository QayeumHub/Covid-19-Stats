//
//  LatestByCountryViewModel.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation
import Combine

class StatesViewModel: ObservableObject{
    
    private var service: ByStatesTotalService!
    var stateName:String
    @Published var data = StatesTotal()
    @Published var showProgress = true
    init(endPoints:EndPoints, stateName:String){
        self.stateName = stateName
        self.service = ByStatesTotalService()
        getData(endPoints: endPoints)
    }
    
    var statesStat: [StateStat]{
        if let data = data.data?.covid19Stats {
            let sortedData = data.sorted(by:{$0.confirmed! > $1.confirmed!})
            return sortedData
        }else{
            return [StateStat]()
        }
    }
    
    func getData(endPoints: EndPoints){
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
