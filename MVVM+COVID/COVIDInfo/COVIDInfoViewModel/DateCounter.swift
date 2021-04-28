//
//  DateCounter.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 4/26/21.
//

import Foundation
import UIKit
class DateCounter {
    func count() -> [String] {
        let calendar = Calendar.current
        var date = Date()
        let formater = DateFormatter()
        formater.dateFormat = "MMM d"
        var days = [String]()
        var daysReversed = [String]()
        for _ in 0 ... 6 {
            let dateString = formater.string(from: date)
            days.append(dateString)
            date = calendar.date(byAdding: .day, value: -1, to: date)!
        }
        daysReversed = days.reversed()
        return daysReversed
    }
}
