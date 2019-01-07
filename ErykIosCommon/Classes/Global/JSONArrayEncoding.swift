//
//  JSONArrayEncoding.swift
//  Alamofire
//
//  Created by Eryk Mariankowski on 07.01.2019.
//

import Alamofire

public struct JSONArrayEncoding: ParameterEncoding {

    public static let `default` = JSONArrayEncoding()

    public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest {
        var request = try urlRequest.asURLRequest()

        guard let json = parameters?["jsonArray"] else {
            return request
        }

        let data = try JSONSerialization.data(withJSONObject: json, options: [])

        if request.value(forHTTPHeaderField: "Content-Type") == nil {
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        }

        request.httpBody = data

        return request
    }
}
