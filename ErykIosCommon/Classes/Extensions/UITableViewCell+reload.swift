//
//  UITableViewCell+reload.swift
//  softraiostemplate
//
//  Created by Eryk Mariankowski on 16.11.2017.
//  Copyright © 2017 Eryk Mariankowski. All rights reserved.
//

import Kingfisher

extension UITableViewCell {

    public func imageReload(url: String, indexPath: IndexPath, tableView: UITableView) {
        imageView?.kf.setImage(
            with: URL(string: url),
            placeholder: nil,
            options: nil,
            progressBlock: nil
        ) { (_, _, _, _) -> Void in
            tableView.reloadRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }

}
