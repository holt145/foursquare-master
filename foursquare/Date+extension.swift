//
//  Date+extension.swift
//  foursquare
//
//  Created by Juan Cabral on 16/02/18.
//  Copyright © 2018 Juan Cabral. All rights reserved.
//

import Foundation

extension Date {
    func getTimeAgo() -> String {
        let timeAgo = Int(Date().timeIntervalSince(self))
        
        let minute = 60
        let hour = 60 * minute
        let day = 24 * hour
        let week = 7 * day
        let month = week * 4
        
        if timeAgo < minute {
            return "\(timeAgo) seconds ago"
        } else if timeAgo < hour {
            return "\(timeAgo / minute) minutes ago"
        } else if timeAgo < day {
            return "\(timeAgo / hour) hours ago"
        } else if timeAgo < week {
            return "\(timeAgo / day) days ago"
        } else if timeAgo < month {
            return "\(timeAgo / week) weeks ago"
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return "\(formatter.string(from: self)))"
    }
}
