//
//  SingleType+compose.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 23.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import UIKit
import RxSwift

extension PrimitiveSequence where Trait == SingleTrait {

    public func applyOperators() -> Single<Element> {
        return self
            .subscribeOn(CurrentThreadScheduler.instance)
            .observeOn(MainScheduler.instance)
    }

    public func processMessage(_ message: String, on ctrl: UIViewController) -> Single<Element> {
        return self
            .map {
                ctrl.change(message: message)
                return $0
        }
    }

    public func process(table: UITableView) -> Single<Element> {
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

    public func process(controller: UIViewController, message: String? = nil) -> Single<Element> {
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
