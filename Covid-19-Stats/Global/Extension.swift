//
//  DateExtension.swift
//  Covit-19-Stats
//
//  Created by Abdul Meraj on 4/10/20.
//  Copyright © 2020 Abdul Meraj. All rights reserved.
//

import Foundation

extension Date{
    func formatDate(dateStr: String) -> String{
        let f = DateFormatter()
        f.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        f.timeZone = TimeZone(abbreviation: "UTC")
        var date:Date?
        date = f.date(from:dateStr)
        f.dateFormat = "MM/dd/yyyy hh:mm a"
        f.timeZone = TimeZone.current
        var dateStr = String()
        if let date = date {
           dateStr = f.string(from: date)
        }
       return dateStr
    }
}

extension Int{
    func formatNumber() -> String {
        let f = NumberFormatter()
        f.numberStyle = .decimal
        return f.string(from: NSNumber(value: self))!
    }
}
