//
//  UIImageView+heightScaled.swift
//  DSKit
//
//  Created by Jules on 23.02.22.
//

import UIKit.UIImageView

public extension UIImageView {
    /**
     Calculates the height you need to constrain an imageView to,
     in case you set the imageView to a fixed width and want it to have the
     height scaled according to the image it holds
     */
    func heightForImageWidth(width: CGFloat) -> CGFloat {
        let imageOriginalHeight = image?.size.height ?? 0
        let imageOriginalWidth = image?.size.width ?? 0
        guard imageOriginalWidth > 0 else { return 0 }
        let scaleFactor = width / imageOriginalWidth
        let scaledHeight = imageOriginalHeight * scaleFactor
        return scaledHeight
    }
}
