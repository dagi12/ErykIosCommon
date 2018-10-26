//
//  UIButton+fade.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 15.11.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import UIKit

extension UIButton {

    public enum ButtonConstants {
        public static let animationDuration = 0.5
    }

    public func fadeIn(duration: Double = ButtonConstants.animationDuration) {
        guard isHidden else {
            return
        }
        UIView.animate(withDuration: duration, delay: 0, options: [], animations: {
            self.alpha = 1.0
        }, completion: { _ in
            self.isHidden = false
        })
    }

    public func fadeOut(duration: Double = ButtonConstants.animationDuration) {
        guard !isHidden else {
            return
        }
        UIView.animate(withDuration: duration, delay: 0, options: [], animations: {
            self.alpha = 0.0
        }, completion: { _ in
            self.isHidden = true
        })
    }

}
