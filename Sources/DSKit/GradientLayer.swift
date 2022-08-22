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

struct GradientColorConfiguration {
    let gradientColors: [GradientColor]
    let startPoint: CGPoint
    let endPoint: CGPoint

    let colors: [CGColor] = gradientColors.map { $0.color }
    let locations: [NSNumber] = gradientColors.map { $0.location }
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
