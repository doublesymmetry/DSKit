//
//  ClosureTypeAliases.swift
//  DSKit
//
//  Created by Fabian Sulzbacher on 11.04.21.
//

/// Type alias for closure with 0 arguments. Improving closure readability.
public typealias Closure = () -> Void

/// Type alias for closure with 1 argument. Improving closure readability.
public typealias Closure1<T> = (T) -> Void

/// Type alias for closure with 2 arguments. Improving closure readability.
public typealias Closure2<T, U> = (T, U) -> Void

