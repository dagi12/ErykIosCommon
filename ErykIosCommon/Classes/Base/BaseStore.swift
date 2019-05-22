//
//  BaseService.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 14.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Moya
import Alamofire

open class BaseStore<T: TargetType> {

    let serverTrustPolicies: [String: ServerTrustPolicy] = [
        "193.91.26.137": .disableEvaluation,
        "46.228.93.150": .disableEvaluation,
        // AUTH API
        "217.168.139.117": .disableEvaluation,
        "217.168.139.120": .disableEvaluation
    ]

    private lazy var manager = Manager (
        configuration: URLSessionConfiguration.default,
        serverTrustPolicyManager: ServerTrustPolicyManager(policies: serverTrustPolicies)
    )

    #if targetEnvironment(simulator)
    private lazy var plugins: [PluginType] = [
        NetworkLoggerPlugin(verbose: true),
        NetworkErrorsPlugin()
    ]
    #else
    private lazy var plugins: [PluginType] = [
        NetworkErrorsPlugin()
    ]
    #endif

    public lazy var provider: MoyaProvider<T> = MoyaProvider<T>(manager: manager, plugins: plugins)

    public init() {}

}
