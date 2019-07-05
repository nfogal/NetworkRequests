//
//  EndPointType.swift
//  NetworkRequests
//
//  Created by Nick Fogal on 6/27/19.
//  Copyright © 2019 Nick Fogal. All rights reserved.
//

import Foundation

// TODO: This protocol isn't being used currently
protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
//    var httpMethod: HTTP
}
