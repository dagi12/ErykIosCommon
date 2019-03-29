//
//  Function.swift
//  Pods
//
//  Created by Eryk Mariankowski on 29.03.2019.
//

import Foundation

open class Function<T, S> {

    public init() {

    }

    open func apply(t: T) -> S? {
        fatalError("should be implemented")
        return nil
    }

}
