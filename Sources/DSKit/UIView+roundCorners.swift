//
//  UIView+roundCorners.swift
//  DSKit
//
//  Created by Jules on 05.01.22.
//

import UIKit.UIView

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }

    /**
     Apply 8px corner radius
     */
    func applyStandardCornerRadius() {
        self.layer.cornerRadius = 8
    }
}
