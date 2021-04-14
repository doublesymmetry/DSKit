//
//  Collection+SafeAccess.swift.swift
//  DSKit
//
//  Created by Fabian Sulzbacher on 12.04.21.
//

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    /// 
    /// Usage:
    /// ```
    /// let cast = ["Vivien", "Marlon", "Kim", "Karl"]
    /// // this will assign "Vivien" to the leadActor-variable
    /// let leadActor = cast[safe: 0]
    /// // this will assign nil to the variable, because the index is not within the bounds of the array.
    /// let supportingActor = cast[safe: 4]
    /// ```
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
