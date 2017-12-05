//
//  UIViewImage+rounded.swift
//  erent-ceo-ios
//
//  Created by Eryk Mariankowski on 16.11.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//
import UIKit

extension UIImageView {

    public func rounded() {
        layer.cornerRadius = frame.size.width / 2
        clipsToBounds = true
    }

}
