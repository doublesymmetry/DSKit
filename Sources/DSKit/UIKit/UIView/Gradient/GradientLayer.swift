//
//  GradientLayer.swift
//  DSKit
//
//  Created by Fabian Sulzbacher
//

import Foundation
import UIKit

class GradientLayer: CAGradientLayer {

    struct Configuration {
        let gradientColors: [GradientColor]
        let startPoint: CGPoint
        let endPoint: CGPoint

        struct GradientColor {
            let color: CGColor
            let location: NSNumber
        }
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    // Fixes an issue, where the view debugger was not working anymore, when invoked from a view which containt a GradientLayer.
    // https://stackoverflow.com/questions/31892986/why-does-cabasicanimation-try-to-initialize-another-instance-of-my-custom-calaye/36017699

    override init(layer: Any) {
        super.init(layer: layer)
    }

    init(configuration: Configuration, frame: CGRect) {
        super.init(layer: CAGradientLayer.self)
        colors = configuration.gradientColors.map { $0.color }
        locations = configuration.gradientColors.map { $0.location }
        startPoint = configuration.startPoint
        endPoint = configuration.endPoint
        self.frame = frame
    }
}
