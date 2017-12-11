//
//  UIFont+Lato.swift
//  Alamofire
//
//  Created by Eryk Mariankowski on 06.12.2017.
//

import UIKit


extension UIFont {
    
    public class func loadFont(withName fontName: String) {
        let bundleURL: URL? = Bundle(for: self).url(forResource: "ErykIosCommon",
                                                    withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)
        let fontURL: URL? = bundle?.url(forResource: fontName,
                                        withExtension: "ttf")
        let fontData = try! Data(contentsOf: fontURL!)
        let provider = CGDataProvider(data: fontData as CFData)!
        if let font = CGFont(provider) {
            CTFontManagerRegisterGraphicsFont(font, nil)
        }
    }
    
}
