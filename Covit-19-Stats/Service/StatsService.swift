//
//  StatsService.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

class StatsService{
    
    func getWorldStats(endPoints:EndPoints, completion: @escaping (WorldTotal?) -> ()){
        let headers = [
            "x-rapidapi-host": "coronavirus-monitor.p.rapidapi.com",
            "x-rapidapi-key": "604bc200e0mshedc0744ae67a52cp188a16jsnf99178f90edd"
        ]
        guard let url = URL(string:endPoints.value) else {
            completion(nil)
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else{
                completion(nil)
                return
            }
     
                do{
                    let data = try JSONDecoder().decode(WorldTotal.self, from: data)
                     completion(data)
                }catch let error{
                    completion(nil)
                    print(error.localizedDescription)
                }
           
            //let responseData = response as? HTTPURLResponse
            let str = String(data: data, encoding: String.Encoding.utf8)!
            print(str)
            
            
        }.resume()
        
    }
    
}
