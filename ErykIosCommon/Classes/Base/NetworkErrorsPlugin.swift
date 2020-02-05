//
// Created by Eryk Mariankowski on 11.06.2018.
//

import RxSwift
import Moya
import Result
import SwiftMessages

struct HttpStatus {
    static let unauthorized = 401
    static let forbidden = 403
}

struct NetworkErrorsPlugin: PluginType {

    public func didReceive(_ result: Result<Moya.Response, MoyaError>, target: TargetType) {
        if case .success(let response) = result {
            if let response = result.value {
                if response.statusCode == HttpStatus.unauthorized || response.statusCode == HttpStatus.forbidden {
                    Router.sharedInstance.logout()
                } else {
                    SwiftMessages.hide()
                }
            }
        } else if case .failure(let err) = result {
            if let error = result.error as? MoyaError {
                if case .underlying(_, _) = err {
                    SwiftMessages.netInfo()
                }
            }
        }
    }

}
