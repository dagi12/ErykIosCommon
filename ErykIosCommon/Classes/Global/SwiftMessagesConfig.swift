//
//  SwiftMessagesConfig.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 05.04.2019.
//

import SwiftMessages

public class SwiftMessagesConfig {

    public static func setUp() {
        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 30)
        SwiftMessages.defaultConfig = config
    }

}

extension SwiftMessages {

    public static func netInfo() {
        var config = SwiftMessages.Config()
        config.presentationStyle = .bottom
        config.presentationContext = .window(windowLevel: .statusBar)
        config.duration = .seconds(seconds: 60)
        let view = MessageView.viewFromNib(layout: .statusLine)
        view.configureTheme(.error)
        view.configureDropShadow()
        view.configureContent(title: "", body: "no_internet".common)
        SwiftMessages.show(config: config, view: view)
    }

    public static func showError(message: String) {
        var config = SwiftMessages.Config()
        config.presentationStyle = .top
        config.duration = .seconds(seconds: 30)
        let view = MessageView.viewFromNib(layout: .messageView)
        view.button?.isHidden = true
        view.configureTheme(.error)
        view.configureDropShadow()
        view.tapHandler = { _ in SwiftMessages.hide() }
        view.configureContent(title: "error".common, body: message)
        SwiftMessages.show(config: config, view: view)
    }

}
