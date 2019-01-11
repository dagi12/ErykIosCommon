//
//  ErykAppDelegate.swift
//  Alamofire
//
//  Created by Eryk Mariankowski on 10.06.2018.
//

import Foundation
import XCGLogger

let log = XCGLogger.default

public typealias LaunchOptionsCallback = ([UIApplication.LaunchOptionsKey: Any]?)

extension UIApplicationDelegate {

    public func initialization() {
        log.setup(level: .debug, showThreadName: true, showLevel: true, showFileNames: true,
                  showLineNumbers: true, writeToFile: nil, fileLevel: nil)
    }

}
