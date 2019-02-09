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
    public func process(controller: UIViewController, message: String? = "please_wait".common) -> Completable {
        let tmpMessage = message ?? "please_wait".common
        return self
            .observeOn(MainScheduler.instance)
            .do(onError: {
                controller.showError(message: $0.localizedDescription)
                log.error($0)
                return
            }, onSubscribe: {
                controller.showProcess(message: tmpMessage)
            }, onDispose: {
                controller.safeDismiss()
            })
    }

    // use for completables after which you want to display ui animtation
    public func activity(controller: UIViewController, message: String = "please_wait".common) -> Completable {
        let tmpMessage = message ?? "please_wait".common
        return self
            .observeOn(MainScheduler.instance)
            .andThen(Completable.create { event in
                controller.showProcess(message: tmpMessage) {
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
