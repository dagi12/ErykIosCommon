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
        configuration.timeoutIntervalForRequest = 60
        configuration.timeoutIntervalForResource = 60
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
                }
                // todo Chowało mi błędy nie wiem dlaczego
                //                else {
                //                    SwiftMessages.hide()
                //                }
            }
        } else if case .failure(let err) = result {
            if let error = result.error as? MoyaError {
                if case .underlying(let err2, let res) = err {
                    // TODO rozdziel brak połączenia internetowego i 404
                    log.warning(err2.localizedDescription)
                    SwiftMessages.netInfo()
                }
            }
        }
    }

}
