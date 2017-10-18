//
//  AppIdStore.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 11.10.2017.
//

import Foundation

public class AppIdStore {
    
    static let appKeyLength = 6
    
    public static func getId(appKey: String) -> String {
        if let key = UserDefaults.standard.string(forKey: appKey) {
            return key;
        }
        let newKey = StringHelper.randomString(length: appKeyLength);
        UserDefaults.standard.set(newKey, forKey: appKey)
        return newKey
    }
    
}

