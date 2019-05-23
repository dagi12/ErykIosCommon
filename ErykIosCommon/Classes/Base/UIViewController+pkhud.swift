//
//  UIViewContoller+pkhud.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 23/05/2019.
//

import UIKit
import PKHUD

extension UIViewController {

    public func safeDismiss() {
        HUD.hide()
    }

    public func showProcess(message: String? = nil) {
        if let message = message {
            HUD.show(.labeledProgress(title: message, subtitle: nil))
        } else {
            HUD.show(.progress)
        }
    }

    public func change(message: String) {
        HUD.show(.labeledProgress(title: message, subtitle: nil))
    }

}
