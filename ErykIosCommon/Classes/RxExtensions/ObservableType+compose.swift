//
//  ObservableType+compose.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 23.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Foundation
import RxSwift

extension ObservableType {

    public func applyOperators() -> Observable<E> {
        return self
            .subscribeOn(CurrentThreadScheduler.instance)
            .observeOn(MainScheduler.instance)
    }
}
