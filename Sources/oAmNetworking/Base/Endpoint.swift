//
//  Endpoint.swift
//  Products-iOS
//
//  Created by Omar on 19/07/2024.
//

import Foundation

public protocol Endpoint{
    var baseDomain: String {get}
    var path: String {get}
    var requestTimeOut: Int {get}
    var httpMethod: HTTPMethod {get}
}

extension Endpoint{
    public var requestTimeOut: Int{
        30
    }
}

public protocol RequestEndpoint: Endpoint{
    var parameters: Parameters? {get}
    func createRequest() -> NetworkRequest
}
