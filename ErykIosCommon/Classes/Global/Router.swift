//
// Created by Eryk Mariankowski on 11.06.2018.
//

import Foundation

public class Router {

    public static let sharedInstance = Router()

    public weak var logoutDelegate: LogoutDelegate?

    public func logout() {
        UserDefaults.standard.set(false, forKey: ConfigConstants.registeredKey)
        logoutDelegate!.logout()
    }

}

public enum ConfigConstants {
    public static let registeredKey = "registeredKey"
}
