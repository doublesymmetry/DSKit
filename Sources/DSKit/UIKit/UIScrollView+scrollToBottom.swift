//
//  UIScrollView+scrollToBottom.swift
//  DSKit
//
//  Created by Jules on 23.06.22.
//

import UIKit.UIScrollView

public extension UIScrollView {
    func scrollToBottom(animated: Bool) {
        if self.contentSize.height < self.bounds.size.height { return }
        let bottomOffset = CGPoint(x: 0, y: self.contentSize.height - self.bounds.size.height)
        self.setContentOffset(bottomOffset, animated: animated)
    }
}
