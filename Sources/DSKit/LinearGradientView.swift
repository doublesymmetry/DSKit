//
//  LinearGradientView.swift
//  DSKit
//
//  Created by David Chavez on 07.04.21.
//

import UIKit
import SwiftUI

/// A linear gradient view.
///
/// The gradient applies the color function along an axis, as defined by its
/// start and end points. The gradient maps the unit-space points into the
/// bounding rectangle of each shape filled with the gradient.
final public class LinearGradientView: UIView {

    /// A color gradient represented as an array of color stops, each having a parametric location value.
    public var gradient: Gradient = Gradient(colors: [.clear, .black]) {
        didSet { setNeedsDisplay() }
    }

    /// The start point of the gradient when drawn in the layer’s coordinate space.
    public var startPoint: UnitPoint = .top {
        didSet { setNeedsDisplay() }
    }

    /// The end point of the gradient when drawn in the layer’s coordinate space.
    public var endPoint: UnitPoint = .bottom {
        didSet { setNeedsDisplay() }
    }

    // MARK: - UI Elements

    private let gradientLayer = CAGradientLayer()

    // MARK: - Initializer

    public convenience init(gradient: Gradient, startPoint: UnitPoint  = .top, endPoint: UnitPoint = .bottom) {
        self.init(frame: .zero)
        self.gradient = gradient
        self.startPoint = startPoint
        self.endPoint = endPoint
    }

    // MARK: - UIView

    override public func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        gradientLayer.frame = self.bounds
    }

    override public func draw(_ rect: CGRect) {
        gradientLayer.colors = gradient.stops.map { $0.color.cgColor }
        gradientLayer.locations = gradient.stops.map { $0.location as NSNumber }

        gradientLayer.startPoint = CGPoint(x: startPoint.x, y: startPoint.y)
        gradientLayer.endPoint = CGPoint(x: endPoint.x, y: endPoint.y)

        gradientLayer.frame = self.bounds
        if gradientLayer.superlayer == nil {
            self.layer.insertSublayer(gradientLayer, at: 0)
        }
    }
}
