//
//  CustomServerTrustPoliceManager.swift
//  SoftraIosCommon
//
//  Created by Eryk Mariankowski on 22/05/2019.
//

import Moya
import Alamofire

public class CustomServerTrustPoliceManager: ServerTrustPolicyManager {

    override public func serverTrustPolicy(forHost host: String) -> ServerTrustPolicy? {
        return .disableEvaluation
    }

    public init() {
        super.init(policies: [:])
    }
}
