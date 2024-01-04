//
//  HostingTableViewCell.swift
//  DSKit
//
//  Created by David Chavez on 1/2/24.
//

import SwiftUI

open class HostingTableViewCell<T: View>: UITableViewCell {
    // MARK: - UI Elements

    private let hostingController = UIHostingController<T?>(rootView: nil)

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        hostingController.view.backgroundColor = .clear
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public API

    public func set(rootView: T) {
        hostingController.rootView = rootView
        dynamicLayout()
    }

    // MARK: - Layout

    private func dynamicLayout() {
        hostingController.view.invalidateIntrinsicContentSize()
        if let parentViewController = parentViewController {
            let requiresControllerMove = hostingController.parent != parentViewController
            if requiresControllerMove {
                parentViewController.addChild(hostingController)
            }
        }

        if !self.contentView.subviews.contains(hostingController.view) {
            self.contentView.addSubview(hostingController.view)
            hostingController.view.translatesAutoresizingMaskIntoConstraints = false
            hostingController.view.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
            hostingController.view.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
            hostingController.view.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
            hostingController.view.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        }

        if let parentViewController = parentViewController {
            let requiresControllerMove = hostingController.parent != parentViewController
            if requiresControllerMove {
                hostingController.didMove(toParent: parentViewController)
            }
        }
    }
}
