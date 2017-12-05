//
//  String+Localization.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 14.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Foundation

public extension String {

    var common: String {
        return NSLocalizedString(self, tableName: "Common", bundle: Bundle.main, value: "", comment: "")
    }

}
