//
//  StringHelper.swift
//  Alamofire
//
//  Created by Eryk Mariankowski on 08.01.2019.
//

import Foundation

public enum StringHelper {

    public static func genericIsEmpty(value: Any?) -> Bool {
        if let safeValue = value {
            switch safeValue {
            case let value2 as Int:
                return value2 == 0
            case let value2 as String:
                return value2.isEmpty
            case let value2 as Date:
                return value2 == DateHelper.nilDate
            default:
                break
            }
        }
        return true
    }

    public static func genericToString(value: Any) -> String {
        switch value {
        case let value2 as Int:
            return String(value2)
        case let value2 as String:
            return value2
        case let value2 as Date:
            return DateHelper.formatter.string(for: value2)!
        default:
            fatalError("Invalid type")
        }
    }

}
