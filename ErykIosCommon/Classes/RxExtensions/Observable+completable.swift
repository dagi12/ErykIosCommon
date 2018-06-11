//
//  Observable+completable.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 11.06.2018.
//

import Foundation
import RxSwift


public extension ObservableType {
    public func asCompletable() -> Completable {
        return ignoreElements()
    }
}

public extension PrimitiveSequence where Trait == SingleTrait {
    public func asCompletable() -> Completable {
        return asObservable().ignoreElements()
    }
}