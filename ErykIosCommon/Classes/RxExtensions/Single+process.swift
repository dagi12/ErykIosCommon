//
//  SingleType+compose.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 23.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import UIKit
import RxSwift
import ErykIosCommon

extension PrimitiveSequence where Trait == SingleTrait {

    public func applyOperators() -> Single<Element> {
        return self
            .subscribeOn(CurrentThreadScheduler.instance)
            .observeOn(MainScheduler.instance)
    }

    public func process(controller: UIViewController, message: String = "please_wait".common) -> Single<Element> {
        return self
            .observeOn(MainScheduler.instance)
            .do(onError: {
                controller.showError(message: $0.localizedDescription)
                log.error($0)
                return
            }, onSubscribe: {
                controller.showProcess(message: message)
            }, onDispose: {
                controller.safeDismiss()
            })
    }

    public typealias Handler = (Element) -> Void

}
