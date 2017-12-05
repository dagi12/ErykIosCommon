//
//  EmailTextFieldDelegate.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 16.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import SkyFloatingLabelTextField

public class EmailTextFieldDelegate: NSObject, UITextFieldDelegate {

    public func textField(_ textField: UITextField,
                          shouldChangeCharactersIn range: NSRange,
                          replacementString string: String) -> Bool {
        verify(textField)
        return true
    }

    public func verify(_ textField: UITextField) {
        if let text = textField.text {
            if let floatingLabelTextField = textField as? SkyFloatingLabelTextField {
                if text.characters.count < 3 || !text.contains("@") {
                    floatingLabelTextField.errorMessage = "invalid_email".common
                } else {
                    floatingLabelTextField.errorMessage = ""
                }
            }
        }
    }

}
