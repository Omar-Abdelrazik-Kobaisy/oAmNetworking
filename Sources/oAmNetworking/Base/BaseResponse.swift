//
//  BaseResponse.swift
//  Products-iOS
//
//  Created by Omar on 19/07/2024.
//

import Foundation
public struct BaseResponse<T: Codable>: Codable{
    public let data: T?
    public let total: Int
    public let skip: Int
    public let limit: Int
    
    enum CodingKeys:String, CodingKey{
        case data = "products"
        case total = "total"
        case skip = "skip"
        case limit = "limit"
    }
}
