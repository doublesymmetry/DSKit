//
//  Gradient.swift
//  DSKit
//
//  Created by David Chavez on 08.04.21.
//

import UIKit

/// A color gradient represented as an array of color stops, each having a parametric location value.
@frozen public struct Gradient: Equatable {

    /// One color stop in the gradient.
    @frozen public struct Stop: Equatable {

        /// The color for the stop.
        public var color: UIColor

        /// The parametric location of the stop.
        ///
        /// This value must be in the range `[0, 1]`.
        public var location: Float

        /// Creates a color stop with a color and location.
        public init(color: UIColor, location: Float) {
            self.color = color
            self.location = location
        }
    }

    /// The array of color stops.
    public var stops: [Gradient.Stop]

    /// Creates a gradient from an array of color stops.
    public init(stops: [Gradient.Stop]) {
        self.stops = stops
    }

    /// Creates a gradient from an array of colors.
    ///
    /// The gradient synthesizes its location values to evenly space the colors along the gradient.
    public init(colors: [UIColor]) {
        let intervals = colors.count - 1
        self.stops = colors.enumerated().map {
            return Stop(color: $0.element, location: (1.0 / Float(intervals)) * Float($0.offset))
        }
    }
}
