//
//  UIView+applyFigmaShadow.swift
//  DSKit
//
//  Created by Jules on 10.01.22.
//

import UIKit.UIView

public extension UIView {
    /**
     Translates the Figma shadow properties into UIView shadow

     Note: for color, pass in with alpha already set
     */
    func applyFigmaShadow(x: Int, y: Int, blur: CGFloat, spread: CGFloat, color: UIColor = .darkGray) {
        self.layer.masksToBounds = false
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: x, height: y)
        self.layer.shadowRadius = spread + (blur / 2)
    }
}
