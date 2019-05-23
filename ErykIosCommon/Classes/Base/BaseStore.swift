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

    private lazy var manager = Manager (
        configuration: URLSessionConfiguration.default,
        serverTrustPolicyManager: CustomServerTrustPoliceManager()
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
