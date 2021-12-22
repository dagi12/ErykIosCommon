//
// Created by Eryk Mariankowski on 11.06.2018.
//
import Alamofire
import RxSwift
import Moya
import SwiftMessages
import enum Result.Result

struct HttpStatus {
    static let unauthorized = 401
    static let forbidden = 403
    static let notFound = 404
}

public struct NetworkErrorsPlugin: PluginType {

    public static let sharedManager: Manager = {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = Alamofire.SessionManager.defaultHTTPHeaders
        configuration.timeoutIntervalForRequest = 120
        configuration.timeoutIntervalForResource = 120
        return Manager (
            configuration: configuration,
            serverTrustPolicyManager: CustomServerTrustPoliceManager()
        )
    }()

    public func didReceive(_ result: Result<Moya.Response, MoyaError>, target: TargetType) {
        if case .success(let response) = result {
            if let response = result.value {
                if response.statusCode == HttpStatus.unauthorized || response.statusCode == HttpStatus.forbidden {
                    Router.sharedInstance.logout()
                } else if  response.statusCode == HttpStatus.notFound {
                    SwiftMessages.netInfo(body: "Serwer API jest nieaktywny")
                }
                // todo Chowało mi błędy nie wiem dlaczego
                //                else {
                //                    SwiftMessages.hide()
                //                }
            }
        } else if case .failure(let err) = result {
            if let error = result.error as? MoyaError {
                if case .underlying(let err2, let res) = err {
                    log.warning(err2.localizedDescription)
                    SwiftMessages.netInfo(body: err2.localizedDescription)
                }
            }
        }
    }

}
