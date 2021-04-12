//
//  Collection+SafeAccess.swift.swift
//  DSKit
//
//  Created by Fabian Sulzbacher on 12.04.21.
//

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
