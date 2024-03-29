//
//  UIControl+addAction.swift
//  DSKit
//
//  Created by Fabian Sulzbacher on 13.01.22.
//

import UIKit

public extension UIControl {
    @available(iOS 14, *)
    func addAction(for controlEvents: UIControl.Event = .touchUpInside, _ closure: @escaping() -> Void) {
        addAction(UIAction { _ in closure() }, for: controlEvents)
    }
}
