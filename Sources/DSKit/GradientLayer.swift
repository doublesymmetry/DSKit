//
//  GradientLayer.swift
//  DSKit
//
//  Created by Fabian
//

import Foundation
import UIKit

struct GradientColor {
    let color: CGColor
    let location: NSNumber
}

enum GradientColorConfiguration {
    case custom([GradientColor], CGPoint, CGPoint)
    var colors: [CGColor] {
        switch self {
        case .custom(let gradientColors, _, _):
            return gradientColors.map { $0.color }
        }
    }
    var locations: [NSNumber] {
        switch self {
        case .custom(let gradientColors, _, _):
            return gradientColors.map { $0.location }
        }
    }
    var startPoint: CGPoint {
        switch self {
        case .custom(_, let startPoint, _):
            return startPoint
        }
    }
    var endPoint: CGPoint {
        switch self {
        case .custom(_, _, let endPoint):
            return endPoint
        }
    }
}

class GradientLayer: CAGradientLayer {

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    // Fixes an issue, where the view debugger was not working anymore, when invoked from a view which containt a GradientLayer.
    // https://stackoverflow.com/questions/31892986/why-does-cabasicanimation-try-to-initialize-another-instance-of-my-custom-calaye/36017699

    override init(layer: Any) {
        super.init(layer: layer)
    }

    init(gradientColorConfiguration: GradientColorConfiguration, frame: CGRect) {
        super.init(layer: CAGradientLayer.self)
        colors = gradientColorConfiguration.colors
        locations = gradientColorConfiguration.locations
        startPoint = gradientColorConfiguration.startPoint
        endPoint = gradientColorConfiguration.endPoint
        self.frame = frame
    }
}
