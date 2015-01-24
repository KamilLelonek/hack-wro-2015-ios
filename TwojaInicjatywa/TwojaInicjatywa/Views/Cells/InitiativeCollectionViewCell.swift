//
//  InitiativeCollectionViewCell.swift
//  TwojaInicjatywa
//
//  Created by Maciej Szewczyk on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import UIKit

class InitiativeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.iconView.layer.cornerRadius = self.iconView.bounds.width/2.0
        self.setIcon(UIImage(named: "city_placeholder")!)
    }
    
    func setIcon(image: UIImage) {
        self.iconView.image = image
    }
}
