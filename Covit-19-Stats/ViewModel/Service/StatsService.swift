//
//  StatsService.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

class StatsService{
    
    var statsObjc:Any?
    
    func getStats(endPoints:EndPoints, completionHandler: @escaping (_ statsObjc:Any) -> ()){
        let headers = [
            "x-rapidapi-host": "coronavirus-monitor.p.rapidapi.com",
            "x-rapidapi-key": "604bc200e0mshedc0744ae67a52cp188a16jsnf99178f90edd"
        ]
        guard let url = URL(string:endPoints.value) else {
            completionHandler("")
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else{
                completionHandler("")
                return
            }
            
            switch endPoints {
            case .worldsStats:
                do{
                    self.statsObjc = try JSONDecoder().decode(WorldTotal.self, from: data)
                }catch let error{
                    print(error.localizedDescription)
                }
            case .countriesEffected:
                do{
                    self.statsObjc = try JSONDecoder().decode(CountriesEffected.self, from: data)
                }catch let error{
                    print(error.localizedDescription)
                }
            case .coutriesByCases:
                do{
                    self.statsObjc = try JSONDecoder().decode(CoutriesByCases.self, from: data)
                }catch let error{
                    print(error.localizedDescription)
                }
            case .usa:
                do{
                    self.statsObjc = try JSONDecoder().decode(UsaCasesByState.self, from: data)
                }catch let error{
                    print(error.localizedDescription)
                }
            case .countryByNameAndDate(country:_, date:_):
                do{
                    self.statsObjc = try JSONDecoder().decode(StatByCountryNameAndDate.self, from: data)
                }catch let error{
                    print(error.localizedDescription)
                }
            case .johnHopkicByState(state:_):
                do{
                    self.statsObjc = try JSONDecoder().decode(JohnHopkinByState.self, from: data)
                }catch let error{
                    print(error.localizedDescription)
                }
            case .latestStatsByCoutry(country:_):
                do{
                    self.statsObjc = try JSONDecoder().decode(LatestStatsByCountryTotal.self, from: data)
                }catch let error{
                    print(error.localizedDescription)
                }
            }
            
            if let statsObjc = self.statsObjc {
                completionHandler(statsObjc)
            }else{
                completionHandler("")
            }
            
            
            //let responseData = response as? HTTPURLResponse
            let str = String(data: data, encoding: String.Encoding.utf8)!
            print(str)
            
            
        }.resume()
        
    }
    
}
