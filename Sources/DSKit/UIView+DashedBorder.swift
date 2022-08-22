//
//  UIView+DashedBorder.swift
//  Zebpay
//
//  Created by Jules on 08.02.22.
//

import Foundation
import UIKit

struct DashedBorderConfigurationItem {
    var borderWidth: CGFloat
    var paintedSegmentWidth: NSNumber
    var unpaintedSegmentWidth: NSNumber
    var color: UIColor
    var cornerRadius: CGFloat
}

/**
 !! view needs to be laid out before **addDashedBorder** gets called on it !!
e.g. call **layoutIfNeeded()** or override **layoutSubviews()** before adding the border
 */
extension UIView {
    func addDashedBorder(configuration: DashedBorderConfigurationItem) {

        layer.sublayers?.forEach {
            if let shapeLayer = $0 as? CAShapeLayer,
               shapeLayer.lineDashPattern != nil {
                $0.removeFromSuperlayer()
            }
        }

        let shapeLayer = CAShapeLayer()
        let frameSize = self.frame.size
        let shapeRect = CGRect(x: 0, y: 0, width: frameSize.width, height: frameSize.height)

        shapeLayer.bounds = shapeRect
        shapeLayer.position = CGPoint(x: frameSize.width / 2, y: frameSize.height / 2)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = configuration.color.cgColor
        shapeLayer.lineWidth = configuration.borderWidth
        shapeLayer.lineJoin = CAShapeLayerLineJoin.round
        shapeLayer.lineDashPattern = [configuration.paintedSegmentWidth, configuration.unpaintedSegmentWidth]
        shapeLayer.path = UIBezierPath(roundedRect: shapeRect, cornerRadius: configuration.cornerRadius).cgPath

        self.layer.addSublayer(shapeLayer)
    }
}
