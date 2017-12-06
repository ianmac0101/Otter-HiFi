//
//  HomeViewCell.swift
//  Otter
//
//  Created by gustavo chavez on 12/3/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit

class HomeViewCell: UITableViewCell {

    @IBOutlet weak var goalImage: UIImageView!
    @IBOutlet weak var goalLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
