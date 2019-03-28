//
//  PropertyReflectable.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 28.03.2019.
//

import Foundation

public protocol PropertyReflectable { }

extension PropertyReflectable {
    public subscript(key: String) -> Any? {
        let m = Mirror(reflecting: self)
        for child in m.children {
            if child.label == key { return child.value }
        }
        return nil
    }
}
