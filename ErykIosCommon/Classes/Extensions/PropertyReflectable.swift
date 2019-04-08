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
        return Mirror(reflecting: self).children.first { $0.label == key }
    }
}
