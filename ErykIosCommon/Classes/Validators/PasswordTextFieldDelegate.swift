//
//  PasswordTextFieldDelegate.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 16.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import SkyFloatingLabelTextField

public class PasswordTextFieldDelegate: NSObject, UITextFieldDelegate {

    static let passwordLen = 5

    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange,
                          replacementString string: String) -> Bool {
        verify(textField)
        return true
    }

    public func verify(_ textField: UITextField) {
        if let text = textField.text {
            if let floatingLabelTextField = textField as? SkyFloatingLabelTextField {
                if text.count == 0 {
                    floatingLabelTextField.errorMessage = "empty_password".common
                } else if text.count < PasswordTextFieldDelegate.passwordLen {
                    floatingLabelTextField.errorMessage = "short_password".common
                } else {
                    floatingLabelTextField.errorMessage = ""
                }
            }
        }
    }

}
