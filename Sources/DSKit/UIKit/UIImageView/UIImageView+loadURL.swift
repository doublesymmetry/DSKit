//
//  UIImageView+loadURL.swift
//  DSKit
//
//  Created by Fabian Sulzbacher on 21.03.22.
//

import UIKit.UIImageView

public extension UIImageView {

    /// Given that the url is pointing to an image,
    /// this function loads the image and sets it to the imageView.
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
