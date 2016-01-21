//
//  PhotosTableViewCell.swift
//  separateDataSource
//
//  Created by ken yiu on 21/1/2016.
//  Copyright © 2016 ken yiu. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setCell(labelText: String) {
        self.label.text = labelText
    }
}
