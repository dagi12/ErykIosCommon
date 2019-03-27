//
//  StaticTableViewController.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 27.03.2019.
//

import UIKit

open class StaticTableViewController<T: StaticTableViewModel, S: UITableViewCell>: UITableViewController {

    public var tableViewModel: T!

    override open func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? S {
            bind(cell: cell, with: tableViewModel.items[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }

    override open func tableView(_ tableViewView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.items.count
    }

    // handles click
    override open func tableView(_ tableViewView: UITableView, didSelectRowAt indexPath: IndexPath) {
        fatalError("should be overidden")
    }

    // set item for destination controller tableView.indexPathForSelectedRow?.row
    override open func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        fatalError("should be overidden")
    }

    // bind item to cell
    open func bind(cell: S, with item: T.Model) {
        fatalError("should be overidden")
    }

}
