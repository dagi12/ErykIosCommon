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

    private lazy var manager = Manager (
        configuration: URLSessionConfiguration.default,
        serverTrustPolicyManager: ServerTrustPolicyManager(policies: serverTrustPolicies)
    )

    private lazy var plugins = [NetworkLoggerPlugin(verbose: true)]

    public lazy var provider: MoyaProvider<T> = MoyaProvider<T>(manager: manager, plugins: plugins)

    public init() {}

}
