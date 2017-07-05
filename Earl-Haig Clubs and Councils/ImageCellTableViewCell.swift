//
//  ImageCellTableViewCell.swift
//  Earl-Haig Clubs and Councils
//
//  Created by Harish Sharma on 2014-12-24.
//  Copyright (c) 2014 IshanCorp. All rights reserved.
//

import UIKit

class ImageCellTableViewCell: UITableViewCell {

    @IBOutlet weak var clubImage: UIImageView!
    
    @IBOutlet weak var clubTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
