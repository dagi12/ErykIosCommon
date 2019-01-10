//
//  DetailViewController.swift
//  tableview-header
//
//  Created by Lukas Würzburger on 2/22/17.
//  Copyright © 2017 Lukas Würzburger. All rights reserved.
//
import UIKit


// TODO seperate header and table
open class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fatalError("should be implemented")
    }

    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        fatalError("should be implemented")
    }

    public weak var delegate: DetailViewControllerDelegate!

    // MARK: - View Life Cycle
    override open func viewDidLoad() {
        super.viewDidLoad()
        delegate.tableView.delegate = self
        delegate.tableView.dataSource = self
    }

    // MARK: - Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

}

public protocol DetailViewControllerDelegate: class {

    // MARK: - IB Outlets
    weak var tableView: UITableView! { get }

}
