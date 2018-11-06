//
//  Single+netHandler.swift
//  Alamofire
//
//  Created by Eryk Mariankowski on 07.02.2018.
//

//import Whisper
import RxSwift

extension Single where Trait == SingleTrait {

    public func netHandler(_ nav: UINavigationController) -> Single<Element> {
        // FIXME whisper is deprecated, do not work for iOS 11 and 12
        return self
//            .observeOn(MainScheduler.instance)
//            .do(onNext: { _ in
//                Whisper.hide(whisperFrom: nav)
//            }, onError: { _ in
//                let message = Message(title: "no_internet".common, backgroundColor: .red)
//                Whisper.show(whisper: message, to: nav, action: .present)
//            })
    }

}
