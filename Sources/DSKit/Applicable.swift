//
//  Applicable.swift
//  DSKit
//
//  Created by Fabian Sulzbacher on 12.04.21.
//

protocol Applicable { }

extension Applicable {
    /// apply receives a closure that has self as an argument. Enables you to directy configure and return an object without assigning it to a variable.
    /// - Parameter closure: A closure with self as argument.
    /// - Returns: self
    func apply(closure: Closure1<Self>) -> Self {
        closure(self)
        return self
    }
}

extension NSObject: Applicable { }
