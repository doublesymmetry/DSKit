//
//  UIImageView+loadURL.swift
//  DSKit
//
//  Created by Fabian Sulzbacher on 21.03.22.
//

import UIKit.UIImageView

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
