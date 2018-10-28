//
//  BaseTargetType.swift
//  Alamofire
//
//  Created by Eryk Mariankowski on 09.06.2018.
//

import Foundation
import Moya

public protocol BaseTargetType: TargetType {

}

public extension BaseTargetType {

    var sampleData: Data {
        return Data()
    }

    var baseURL: URL {
        return BaseUrlStore.sharedInstance.url!
    }

    var headers: [String: String]? {
        return ["Content-type": "application/json"]
    }

}
