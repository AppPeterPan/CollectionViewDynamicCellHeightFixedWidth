//
//  MyCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by Peter Pan on 3/18/16.
//  Copyright © 2016 Peter Pan. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var quoteLabel: UILabel!

    @IBOutlet weak var labelWidthConstraint: NSLayoutConstraint!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        self.labelWidthConstraint.constant = (UIScreen.mainScreen().bounds.width - 30)/2
        
    }
}
