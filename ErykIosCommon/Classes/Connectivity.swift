//
//  Connectivity.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 16.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Foundation
import Alamofire

struct Connectivity {

    static let sharedInstance = NetworkReachabilityManager()!

    static var isOnline: Bool {
        return self.sharedInstance.isReachable
    }

}
