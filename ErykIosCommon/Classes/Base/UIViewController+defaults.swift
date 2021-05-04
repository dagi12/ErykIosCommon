//
//  BaseController.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 29.10.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import UIKit
import RxSwift
import SwiftMessages

public extension UIViewController {

    public func sheet(with actions: [UIAlertAction], title: String = "choose_option".common) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        for action in actions {
            alert.addAction(action)
        }
        alert.addAction(UIAlertAction(title: "cancel".common, style: .cancel, handler: nil))
        if let popoverController = alert.popoverPresentationController {
            popoverController.sourceView = self.view
            popoverController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
            popoverController.permittedArrowDirections = []
        }
        self.present(alert, animated: true, completion: nil)
    }

    public func showInfo(message: String) {
        var config = SwiftMessages.Config()
        config.presentationStyle = .top
        let view = MessageView.viewFromNib(layout: .messageView)
        view.button?.isHidden = true
        view.tapHandler = { _ in SwiftMessages.hide() }
        view.configureTheme(.info)
        view.configureDropShadow()
        view.configureContent(title: "info".common, body: message)
        SwiftMessages.show(config: config, view: view)
    }

    public func showError(message: String) {
        SwiftMessages.showError(message: message)
    }

}
