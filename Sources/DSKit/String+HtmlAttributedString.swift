//
//  String+HtmlAttributedString.swift
//  DSKit
//
//  Created by Fabian Sulzbacher on 24.05.22.
//  Copyright © 2022 Double Symmetry GmbH. All rights reserved.
//

import Foundation
import UIKit

extension String {
    func toHtmlAttributedString(fontFamily: String = "San Francisco", size: CGFloat, color: UIColor) -> NSAttributedString? {
        do {
            let htmlCSSString = "<style>" +
                "html *" +
                "{" +
                "font-size: \(size)px !important;" +
                "color: \(color.hexValue) !important;" +
                "font-family: \(fontFamily), Lato !important;" +
                "}</style> \(self)"

            guard let data = htmlCSSString.data(using: String.Encoding.utf8) else { return nil }

            return try NSAttributedString(
                data: data,
                options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue],
                documentAttributes: nil
            )
        } catch {
            return nil
        }
    }
}
