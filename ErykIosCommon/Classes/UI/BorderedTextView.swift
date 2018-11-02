//
//  BorderedTextView.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 02.11.2018.
//

import UIKit

class BorderedTextView: UITextView {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.lightGray.cgColor
    }

}
