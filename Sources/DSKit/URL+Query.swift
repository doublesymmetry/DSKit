//
//  URL+Query.swift
//  DSKit
//
//  Created by David Chavez on 19.01.22.
//

import Foundation

extension URL {
    private func splitQuery(_ query: String) -> [String: [String]] {
        return query
            .components(separatedBy: "&")
            .map { $0.components(separatedBy: "=") }
            .reduce(into: [String: [String]]()) { result, element in
                guard !element.isEmpty,
                      let key = element[0].removingPercentEncoding,
                      let value = element.count >= 2 ? element[1].removingPercentEncoding : "" else { return }
                var values = result[key, default: [String]()]
                values.append(value)
                result[key] = values
            }
    }
    
    var queryItems: [String: [String]] {
        guard let query = self.query else { return [:] }
        return splitQuery(query)
    }
}
