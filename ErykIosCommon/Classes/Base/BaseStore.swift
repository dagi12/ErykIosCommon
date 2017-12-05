//
//  BaseService.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 14.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Moya

open class BaseStore<T: TargetType> {

    public lazy var provider: MoyaProvider<T> = MoyaProvider<T>(plugins: [NetworkLoggerPlugin(verbose: true)])
    
    public init() {}

}

