//
//  UIView+TapGestureRecognizer.swift
//  DSKit
//
//  Created by David Chavez on 01.03.22.
//

import UIKit

public extension UIView {
    // Enum to define associated object keys
    private enum AssociatedObjectKeys {
        static var tapGestureRecognizer = "DS_TapGestureRecognizerKey"
    }

    // Type alias for the tap gesture action
    private typealias TapAction = (() -> Void)?

    // Computed property for the tap gesture action
    private var tapAction: TapAction? {
        get {
            return objc_getAssociatedObject(self, &AssociatedObjectKeys.tapGestureRecognizer) as? TapAction
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedObjectKeys.tapGestureRecognizer, newValue, .OBJC_ASSOCIATION_RETAIN)
            }
        }
    }

    // Adds a tap gesture recognizer to the view
    @objc @discardableResult func onTapGesture(perform action: @escaping () -> Void) -> UITapGestureRecognizer {
        isUserInteractionEnabled = true
        tapAction = action

        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture))
        addGestureRecognizer(tapGestureRecognizer)

        return tapGestureRecognizer
    }

    // Handles the tap gesture
    @objc private func handleTapGesture(sender: UITapGestureRecognizer) {
        if let action = tapAction {
            action?()
        } else {
            print("No action")
        }
    }
}
