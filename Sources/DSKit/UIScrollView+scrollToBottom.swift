//
//  UIScrollView+scrollToBottom.swift
//  DSKit
//
//  Created by Jules on 23.06.22.
//  Copyright © 2022 Double Symmetry GmbH. All rights reserved.
//

import UIKit.UIScrollView

extension UIScrollView {
    func scrollToBottom(animated: Bool) {
        if self.contentSize.height < self.bounds.size.height { return }
        let bottomOffset = CGPoint(x: 0, y: self.contentSize.height - self.bounds.size.height)
        self.setContentOffset(bottomOffset, animated: animated)
    }
}
