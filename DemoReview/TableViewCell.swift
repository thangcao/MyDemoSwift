//
//  TableViewCell.swift
//  DemoReview
//
//  Created by Cao Thắng on 9/21/16.
//  Copyright © 2016 Cao Thắng. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelOverView: UILabel!
    @IBOutlet weak var imageViewItem: MyCustomView!
    
    @IBOutlet weak var labelDate: UILabel!
    
    @IBOutlet weak var labelName: UILabel!
    
    var item: MyModel? {
        didSet {
            labelName.text = item?.title
            labelDate.text = item?.time!
            labelOverView.text = item?.overview!
            imageViewItem.image = item?.image
            imageViewItem.circleImageView()
            imageViewItem.borderView(5, color: UIColor.blackColor().CGColor)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
