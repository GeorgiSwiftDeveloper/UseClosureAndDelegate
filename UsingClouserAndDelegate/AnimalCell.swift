//
//  AnimalCell.swift
//  UsingClouserAndDelegate
//
//  Created by Georgi Malkhasyan on 8/7/19.
//  Copyright © 2019 Malkhasyan. All rights reserved.
//

import UIKit

class AnimalCell: UITableViewCell {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    func configureCell(animal: Animal) {
        emojiLabel.text = animal.emoji
        nameLabel.text = animal.name
    }
    
    @IBAction func didTapNoiseBtn(_ sender: Any) {
        
    }
    
}
