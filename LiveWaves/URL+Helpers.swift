//
//  URL+Helpers.swift
//  LiveWaves
//
//  Created by Szamódy Zs. Balázs on 2018. 04. 12..
//  Copyright © 2018. Fr3qFly. All rights reserved.
//

import Foundation

extension URL {
    func withQueries(_ queries: [String:String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.flatMap { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
    
    func withHTTPS() -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.scheme = "https"
        return components?.url
    }
}

protocol Descriptor {
    func getString<T>(_ input: T?) -> String
}

extension Descriptor {
    func getString<T>(_ input: T?) -> String {
        
        guard let input = input else {
            return "N/A"
        }
        return "\(input)"
    }
}
