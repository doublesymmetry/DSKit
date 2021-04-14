//
//  Applicable.swift
//  DSKit
//
//  Created by Fabian Sulzbacher on 12.04.21.
//

protocol Applicable { }

extension Applicable {
    /// Apply receives a closure that has self as an argument. It enables you to directy configure and return an object without assigning it to a variable.
    ///
    /// Usage:
    /// In this example the closure is being used to create and configure a UIView with red background:
    /// ```
    /// let redView = UIView().apply {
    ///     $0.backgroundColor = .red
    /// }
    /// ```
    ///
    /// - Parameter closure: A closure with self as argument.
    /// - Returns: self
    func apply(closure: Closure1<Self>) -> Self {
        closure(self)
        return self
    }
}

extension NSObject: Applicable { }