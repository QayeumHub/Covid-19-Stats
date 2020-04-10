//
//  LatestByCountyTotal.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

class LatestByCountryTotalService{
    
    func getData(endPoints:EndPoints, completion: @escaping (LatestStatsByCountryTotal?) -> ()){
        guard let url = URL(string: endPoints.value) else{
            completion(nil)
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = Constants.httpHeaderValues
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data , error == nil else{
                completion(nil)
                return
            }
            do{
                let dataObj = try JSONDecoder().decode(LatestStatsByCountryTotal.self, from: data)
                completion(dataObj)
            }catch let error{
                completion(nil)
                print(error.localizedDescription)
            }
            let str = String(data: data, encoding: String.Encoding.utf8)!
            print(str)
        }.resume()
    }
}
 
