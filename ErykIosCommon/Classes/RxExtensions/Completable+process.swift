//
//  File.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 01.11.2018.
//

import UIKit
import RxSwift

extension PrimitiveSequence where Trait == CompletableTrait, Element == Never {

    public func applyOperators() -> Completable {
        return self
            .subscribeOn(CurrentThreadScheduler.instance)
            .observeOn(MainScheduler.instance)
    }

    public func process(controller: UIViewController, message: String = "please_wait".common) -> Completable {
        return self
            .observeOn(MainScheduler.instance)
            .do(onSubscribe: {
                RxHelper.showProcess(controller: controller, message: message)
            }, onDispose: {
                controller.dismiss(animated: true)
            })

    }

}
