//
//  BaseController.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 29.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import UIKit
import RxSwift

struct ProcessIndicatorCoords {
    static let xCoord = 10
    static let yCoord = 5
    static let width = 20
    static let height = 50
}

extension UIViewController {

    public func safeDismiss(closure: (() -> Void)? = nil) {
        if let pvc = presentedViewController {
            if !pvc.isBeingDismissed {
                self.dismiss(animated: true) {
                    closure?()
                }
                return
            }
            closure?()
        }
    }

    public func showError(message: String) {
        if  presentedViewController != nil {
            dismiss(animated: true, completion: {
                self.internalShowError(message: message)
            })
        } else {
            internalShowError(message: message)
        }
    }

    private func internalShowError(message: String, title: String = "error".common) {
        let alertController = UIAlertController(
            title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "ok".common, style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

    public func showProcess(message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let frameRect = CGRect(
            x: ProcessIndicatorCoords.xCoord, y: ProcessIndicatorCoords.yCoord,
            width: ProcessIndicatorCoords.width, height: ProcessIndicatorCoords.height)
        let loadingIndicator = UIActivityIndicatorView(frame: frameRect)
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.gray
        loadingIndicator.startAnimating()
        alert.view.addSubview(loadingIndicator)
        present(alert, animated: true, completion: completion)
    }

    public func showInfo(message: String) {
        if presentedViewController != nil {
            dismiss(animated: true) {
                self.internalShowInfo(message: message)
            }
        } else {
            internalShowInfo(message: message)
        }
    }

    public func present(_ controller: UIViewController) {
        if presentedViewController != nil {
            dismiss(animated: true) {
                self.present(controller, animated: true)
            }
        } else {
            self.present(controller, animated: true)
        }
    }

    private func internalShowInfo(message: String) {
        let alertController = UIAlertController(
            title: "info".common, message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "ok".common, style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}