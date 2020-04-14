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
        f.dateFormat = "yyyy-MM-dd HH:mm:ss"
        f.timeZone = TimeZone(abbreviation: "GMT")
        var date:Date?
        date = f.date(from:dateStr)
        if  date == nil {
            f.dateFormat = "yyyy-MM-dd HH:mm:ss.sss"
            date = f.date(from:dateStr)
        }
        if  date == nil {
            date = Date()
        }
        f.dateFormat = "MM/dd/yyyy hh:mm a"
        f.timeZone = TimeZone.current
        return f.string(from: date!)
    }
}

extension Int{
    func formatNumber() -> String {
        let f = NumberFormatter()
        f.numberStyle = .decimal
        return f.string(from: NSNumber(value: self))!
    }
}
