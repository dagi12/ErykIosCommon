//
//  File.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 01.11.2018.
//

import UIKit
import RxSwift
import SkeletonView

extension PrimitiveSequence where Trait == CompletableTrait, Element == Never {

    public func applyOperators() -> Completable {
        return self
            .subscribeOn(CurrentThreadScheduler.instance)
            .observeOn(MainScheduler.instance)
    }

    // use normally
    public func process(controller: UIViewController, message: String? = nil) -> Completable {
        return self
            .observeOn(MainScheduler.instance)
            .do(onError: {
                log.error($0)
                controller.showError(message: $0.localizedDescription)
                return
            }, onSubscribe: {
                controller.showProcess(message: message)
            }, onDispose: {
                controller.safeDismiss()
            })
    }

    public func process(table: UITableView) -> Completable {
        return self
            .observeOn(MainScheduler.instance)
            .do(onError: {
                log.error($0)
                table.hideSkeleton()
                return
            }, onSubscribe: {
                table.showAnimatedGradientSkeleton()
            }, onDispose: {
                table.hideSkeleton()
            })
    }

}
