//
//  UIView+GradientBorder.swift
//  Zebpay
//
//  Created by Jules on 08.02.22.
//

import Foundation
import UIKit

extension UIView {
    func addGradientBorder(gradientColorConfiguration: GradientColorConfiguration, borderWidth: CGFloat, cornerRadius: CGFloat) {

        let gradient = CAGradientLayer()
        gradient.frame = CGRect(origin: CGPoint.zero, size: self.frame.size)
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.cornerRadius = cornerRadius
        gradient.colors = gradientColorConfiguration.colors

        let shape = CAShapeLayer()
        shape.lineWidth = borderWidth
        shape.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        gradient.mask = shape

        self.layer.addSublayer(gradient)
        clipsToBounds = true
    }
}
