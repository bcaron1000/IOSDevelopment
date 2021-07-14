//
//  InfoTableViewCell.swift
//  Assignment3-BryanCaron
//
//  Created by Bryan Caron on 2021-07-07.
//

import UIKit

class InfoTableViewCell: UITableViewCell {
    

    @IBOutlet weak var DetailView: UIView!
    
    @IBOutlet weak var DetailImage: UIImageView!
    
    @IBOutlet weak var engineSizeTextView: UITextView!
    
    @IBOutlet weak var DetailTextView: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
