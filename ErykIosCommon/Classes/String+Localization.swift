//
//  String+Localization.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 14.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Foundation

public extension String {

    public var common: String {
        return NSLocalizedString(self, tableName: "Common", bundle: commonBundle, value: "", comment: "")
    }

}
