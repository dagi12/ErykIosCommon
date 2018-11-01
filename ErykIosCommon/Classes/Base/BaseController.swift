//
//  BaseController.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 29.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import UIKit

public let commonBundle = Bundle(for: BaseController.self)

open class BaseController: UIViewController {

    struct ProcessIndicatorCoords {
        static let xCoord = 10
        static let yCoord = 5
        static let width = 50
        static let height = 50
    }

    public func showProcess() {
        self.showProcess(message: "please_wait".common)
    }

    public func showProcess(message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let frameRect = CGRect(
            x: ProcessIndicatorCoords.xCoord, y: ProcessIndicatorCoords.yCoord,
            width: ProcessIndicatorCoords.width, height: ProcessIndicatorCoords.height)
        let loadingIndicator = UIActivityIndicatorView(frame: frameRect)
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.gray
        loadingIndicator.startAnimating()
        alert.view.addSubview(loadingIndicator)
        present(alert, animated: true)
    }

    public func hideProcess() {
        dismiss(animated: true)
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

    private func internalShowError(message: String) {
        let alertController = UIAlertController(
            title: "error".common, message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "ok".common, style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
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
            title: "Info", message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "ok".common, style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}
