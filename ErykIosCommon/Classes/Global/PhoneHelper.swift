//
// Created by Eryk Mariankowski on 2019-05-16.
//

import Foundation

public enum PhoneHelper {

    public static func dial(phoneNumber: String) {
        guard let number = URL(string: "tel://" + phoneNumber) else {
            return
        }
        UIApplication.shared.open(number)
    }

}
