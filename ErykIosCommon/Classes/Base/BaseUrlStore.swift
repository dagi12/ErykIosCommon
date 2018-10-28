//
//  BaseUrlStore.swift
//  Alamofire
//
//  Created by Eryk Mariankowski on 09.06.2018.
//

import Foundation

private let instance = BaseUrlStore()

public class BaseUrlStore {

    public class var sharedInstance: BaseUrlStore {
        return instance
    }

    public var url: URL?

    public var token: String?

    public static func addSlash(url: String) -> String {
        if url.last! != "/" {
            return url + "/"
        }
        return url
    }

}
