//
//  BaseService.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 14.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Moya
import Alamofire

open class BaseStore<T: TargetType> {
    
    let serverTrustPolicies: [String: ServerTrustPolicy] = [
        "193.91.26.137": .disableEvaluation
    ]
    
    public lazy var manager = Manager (
        configuration: URLSessionConfiguration.default,
        serverTrustPolicyManager: ServerTrustPolicyManager(policies: serverTrustPolicies)
    )

    public lazy var provider: MoyaProvider<T> = MoyaProvider<T>(manager: manager, plugins: [NetworkLoggerPlugin(verbose: true)])
    
    public init() {}

}

