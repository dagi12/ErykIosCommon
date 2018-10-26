//
//  UnderlinedLabel.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 11.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import UIKit

public class UnderlinedLabel: UILabel {

    override public var text: String? {
        didSet {
            guard let text = text else { return }
            let underlineAttribute = [NSAttributedStringKey.underlineStyle: NSUnderlineStyle.styleSingle.rawValue]
            let underlineAttributedString = NSAttributedString(string: text,
                                                               attributes: underlineAttribute)
            self.attributedText = underlineAttributedString
        }
    }

}
