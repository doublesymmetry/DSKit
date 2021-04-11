//
//  ClosureTypeAliases.swift
//  DSKit
//
//  Created by Fabian Sulzbacher on 11.04.21.
//

/// Type aliases for closures with 0, 1 or 2 arguments. Improving clusure readability.
public typealias Closure = () -> Void
public typealias Closure1<T> = (T) -> Void
public typealias Closure2<T, U> = (T, U) -> Void

