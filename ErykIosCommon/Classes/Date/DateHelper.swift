//
//  DateHelper.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 08.11.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import ObjectMapper

public enum DateHelper {

    public static let nilDate: Date = Date(timeIntervalSince1970: 1)

    public static func isNil(_ date: Date?) -> Bool {
        if let safeDate = date {
            return safeDate == DateHelper.nilDate
        }
        return true
    }

    public static let formatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale.current
        return dateFormatter
    }()

    public static let parseFormatter = DateFormatter(withFormat: "yyyy-MM-dd'T'HH:mm:ss", locale: "en_US_POSIX")

    public static let dateTransform = DateFormatterTransform(dateFormatter: parseFormatter)

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
