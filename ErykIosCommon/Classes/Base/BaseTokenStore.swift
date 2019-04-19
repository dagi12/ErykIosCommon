//
//  File.swift
//  Alamofire
//
//  Created by Eryk Mariankowski on 09.06.2018.
//

import Moya
import Alamofire

open class BaseTokenStore<T: TargetType> {

    #if targetEnvironment(simulator)
    private lazy var plugins: [PluginType] = [
        NetworkLoggerPlugin(verbose: true),
        AccessTokenPlugin(tokenClosure: BaseUrlStore.sharedInstance.token!),
        NetworkErrorsPlugin()
    ]
    #else
    private lazy var plugins: [PluginType] = [
        AccessTokenPlugin(tokenClosure: BaseUrlStore.sharedInstance.token!),
        NetworkErrorsPlugin()
    ]
    #endif

    public lazy var provider: MoyaProvider<T> = MoyaProvider<T>(plugins: plugins)

    public init() {

    }

}
