//
//  StatsService.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/9/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

class StatsService{
    func getStats(state:String?, urlStr:UrlStr, completionHandler: @escaping ([Stats]?) -> ()){
    
    let headers = [
        "x-rapidapi-host": "coronavirus-monitor.p.rapidapi.com",
        "x-rapidapi-key": "604bc200e0mshedc0744ae67a52cp188a16jsnf99178f90edd"
    ]
    
        guard let url = URL(string:urlStr.rawValue) else {
        completionHandler(nil)
        return
    }
    var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        //request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Accept")
      
    
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else{
                completionHandler(nil)
                return
            }
            let responseData = response as? HTTPURLResponse
            let str = String(data: data, encoding: String.Encoding.utf8)!
            print(str)
//            let statsData = try? JSONDecoder().decode([Stats].self, from: data)
//            if let statsData = statsData {
//                completionHandler(statsData)
//            }else{
//                completionHandler(nil)
//            }
               
            
        }.resume()
        
    }
    
}
