//
//  DateHelper.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 08.11.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Foundation

public enum DateHelper {

    public static func dayOfMonth() -> Int {
        return Calendar.current.ordinality(of: .day, in: .month, for: Date())!
    }

    public static func currentYear() -> Int {
        return -1
    }

    public static func currentMonth() -> Int {
        let date = Date()
        let calendar = Calendar.current
        return calendar.component(.month, from: date)
    }

    public static func currentDayOfYear() -> Int {
        let date = Date()
        let calendar = Calendar.current
        return calendar.ordinality(of: .day, in: .year, for: date)!
    }

}
