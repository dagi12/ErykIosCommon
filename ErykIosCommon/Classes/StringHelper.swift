//
//  StringHelper.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 11.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Foundation

public class StringHelper {
    
    public static func randomString(length: Int) -> String {
        
        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)
        
        var randomString = ""
        
        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        
        return randomString
    }
    
}
