//
//  ActionableTableViewCell.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 01.11.2018.
//

import UIKit

public class ActionableTableViewCell: UITableViewCell {

    @IBOutlet public weak var customTextView: UITextView!

    public override func awakeFromNib() {
        customTextView.textContainer.lineFragmentPadding = 0
        customTextView.textContainerInset = UIEdgeInsets.zero
    }

}
