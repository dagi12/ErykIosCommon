//
// Created by Eryk Mariankowski on 11.06.2018.
//

import Foundation

public class Router {

    public static let sharedInstance = Router()

    public weak var logoutDelegate: LogoutDelegate?

    public func logout() {
        logoutDelegate!.logout()
    }

}