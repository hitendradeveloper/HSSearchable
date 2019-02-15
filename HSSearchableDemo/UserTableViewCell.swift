//
//  UserTableViewCell.swift
//  HSSearchable
//
//  Created by Hitendra iDev on 28/08/17.
//  Copyright © 2017 Hitendra iDev. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    var user: UserDM! {
        didSet{
            self.textLabel?.text = user.name
            self.detailTextLabel?.text = user.city
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
