//
//  ErykAppDelegate.swift
//  Alamofire
//
//  Created by Eryk Mariankowski on 10.06.2018.
//

import Foundation
import XCGLogger

public let log = XCGLogger.default

public typealias LaunchOptionsCallback = ([UIApplication.LaunchOptionsKey: Any]?)

// TODO to extension
open class ErykAppDelegate: UIResponder, UIApplicationDelegate {

    public func initialization() {
        log.setup(level: .debug, showThreadName: true, showLevel: true, showFileNames: true,
                showLineNumbers: true, writeToFile: nil, fileLevel: nil)
    }

}
