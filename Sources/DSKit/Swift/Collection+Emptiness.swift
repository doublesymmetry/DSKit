//
//  Collection+Emptiness.swift
//  DSKit
//
//  Created by Milen Pivchev on 11/23/21.
//

public extension Collection {
    /// A Boolean value indicating whether the collection is **NOT** empty.
    ///
    /// When you need to check whether your collection is not empty, use the
    /// `isNotEmpty` property instead of checking that the `count` property is
    /// not equal to zero. For collections that don't conform to
    /// `RandomAccessCollection`, accessing the `count` property iterates
    /// through the elements of the collection.
    ///
    ///     let horseName = "Silver"
    ///     if horseName.isNotEmpty {
    ///         print("Hi ho, \(horseName)!")
    ///     } else {
    ///         print("My horse has no name.")
    ///     }
    ///     // Prints "Hi ho, Silver!"
    ///
    var isNotEmpty: Bool {
        get {
            return !isEmpty
        }
    }
}
