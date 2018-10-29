//
//  Supplier.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 28.10.2018.
//

import Foundation

open class Supplier<T> {

    public init() {

    }

    open func get() -> T? {
        fatalError("should be implemented")
        return nil
    }

}
