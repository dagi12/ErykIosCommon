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

    // use normally
    public func process(controller: UIViewController, message: String = "please_wait".common) -> Completable {
        return self
            .observeOn(MainScheduler.instance)
            .do(onSubscribe: {
                RxHelper.showProcess(controller: controller, message: message)
            }, onDispose: {
                controller.dismiss(animated: true)
            })
    }

    // use for completables after which you want to display ui animtation
    public func activity(controller: UIViewController, message: String = "please_wait".common) -> Completable {
        return self
            .observeOn(MainScheduler.instance)
            .andThen(Completable.create { event in
                RxHelper.showProcess(controller: controller, message: message) {
                    event(.completed)
                }
                return Disposables.create()
            })
            .andThen(Completable.create { event in
                controller.dismiss(animated: true) {
                    event(.completed)
                }
                return Disposables.create()
            })
    }

}
