//
//  ContactsTableViewCell.swift
//  Contacts
//
//  Created by retina on 31/01/19.
//  Copyright © 2019 retina. All rights reserved.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {
    
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblCell: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
