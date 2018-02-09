//
//  DateHelper.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 08.11.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Foundation

public enum DateHelper {

    public static var dayOfMonth: Int {
        get {
            return Calendar.current.ordinality(of: .day, in: .month, for: Date())!
        }
    }

    public static var currentYear: Int {
        get {
            return -1
        }
    }

    public static var currentMonth: Int {
        get {
            let date = Date()
            let calendar = Calendar.current
            return calendar.component(.month, from: date)
        }
    }

    public static var currentDayOfYear: Int {
        get {
            let date = Date()
            let calendar = Calendar.current
            return calendar.ordinality(of: .day, in: .year, for: date)!
        }
    }

}
