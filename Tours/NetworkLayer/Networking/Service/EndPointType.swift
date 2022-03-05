//
//  EndPointType.swift
//  Tours
//
//  Created by Евгений Уланов on 09.10.2021.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
