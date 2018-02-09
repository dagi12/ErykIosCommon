//
//  EmptyTextFieldDelegate.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 17.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import SkyFloatingLabelTextField

public class EmptyTextFieldDelegate: NSObject, UITextFieldDelegate {

    private let msg: String!

    public init(msg: String) {
        self.msg = msg
    }

    public func textField(_ textField: UITextField,
                          shouldChangeCharactersIn range: NSRange,
                          replacementString string: String) -> Bool {
        verify(textField, string)
        return true
    }

    public func verify(_ textField: UITextField, _ string: String) {
        if let floatingLabelTextField = textField as? SkyFloatingLabelTextField {
            if string.count == 0 {
                floatingLabelTextField.errorMessage = msg.common
            } else {
                floatingLabelTextField.errorMessage = ""
            }
        }
    }

}
