//
//  SingleType+compose.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 23.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Foundation
import RxSwift

extension PrimitiveSequence where Trait == SingleTrait {

    public func applyOperators() -> Single<Element> {
        return self
            .subscribeOn(CurrentThreadScheduler.instance)
            .observeOn(MainScheduler.instance)
    }

    public func process(controller: BaseController) -> Single<Element> {
        return self
            .observeOn(MainScheduler.instance)
            .do(onSubscribe: {
                controller.showProcess()
            }, onSubscribed: {
                controller.hideProcess()
            })
    }

    public typealias Handler = (Element) -> Void

}
