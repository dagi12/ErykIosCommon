//
//  DetailViewController.swift
//  tableview-header
//
//  Created by Lukas Würzburger on 2/22/17.
//  Copyright © 2017 Lukas Würzburger. All rights reserved.
//
import UIKit

struct DetailViewConstants {
    // MARK: - Variables
    static let topViewMinHeight: CGFloat = 100
    static let topViewMaxHeight: CGFloat = 150
}

open class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fatalError("should be implemented")
    }

    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        fatalError("should be implemented")
    }

    public var delegate: DetailViewControllerDelegate!

    // MARK: - View Life Cycle
    override open func viewDidLoad() {
        super.viewDidLoad()
        delegate.tableView.delegate = self
        delegate.tableView.dataSource = self
        automaticallyAdjustsScrollViewInsets = false
        delegate.tableView.contentInset = UIEdgeInsets(top: delegate.topViewHeightConstraint.constant - 50, left: 0, bottom: 0, right: 0)
        delegate.tableView.scrollIndicatorInsets = delegate.tableView.contentInset
    }

    override open func viewWillAppear(_ animated: Bool) {
        if let navigationController = navigationController {
            navigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
            navigationController.navigationBar.shadowImage = UIImage()
        }
    }

    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let navigationController = navigationController {
            navigationController.navigationBar.setBackgroundImage(nil, for: .default)
            navigationController.navigationBar.shadowImage = nil
        }
    }

    // MARK: - Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    open func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let yOffset = scrollView.contentOffset.y
        if yOffset < -DetailViewConstants.topViewMaxHeight {
            delegate.topViewHeightConstraint.constant = DetailViewConstants.topViewMaxHeight
        } else if yOffset < -DetailViewConstants.topViewMinHeight {
            delegate.topViewHeightConstraint.constant = yOffset * -1
        } else {
            delegate.topViewHeightConstraint.constant = DetailViewConstants.topViewMinHeight
        }
    }

}

public protocol DetailViewControllerDelegate: class {

    // MARK: - IB Outlets
    weak var tableView: UITableView! { get }
    weak var topViewHeightConstraint: NSLayoutConstraint! {get}

}
