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
        SwiftMessages.defaultConfig = config
    }

}

extension SwiftMessages {

    static func netInfo() {
        var config = SwiftMessages.Config()
        config.presentationStyle = .bottom
        config.presentationContext = .window(windowLevel: .statusBar)
        config.duration = .forever
        let view = MessageView.viewFromNib(layout: .statusLine)
        view.configureTheme(.error)
        view.configureDropShadow()
        view.configureContent(title: "", body: "no_internet".common)
        SwiftMessages.show(config: config, view: view)
    }

}
