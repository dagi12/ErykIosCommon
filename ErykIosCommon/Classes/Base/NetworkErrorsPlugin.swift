//
// Created by Eryk Mariankowski on 11.06.2018.
//

import RxSwift
import Moya
import Result

struct HttpStatus {
    static let unauthorized = 401
}

struct NetworkErrorsPlugin: PluginType {


    public func didReceive(_ result: Result<Moya.Response, MoyaError>, target: TargetType) {
        if case .success(let response) = result {
            if let response = result.value {
                if response.statusCode == HttpStatus.unauthorized {
                    Router.sharedInstance.logout()
                }
            }
        }
    }

}