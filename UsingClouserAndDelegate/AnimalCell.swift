//
//  AnimalCell.swift
//  UsingClouserAndDelegate
//
//  Created by Georgi Malkhasyan on 8/7/19.
//  Copyright © 2019 Malkhasyan. All rights reserved.
//

import UIKit


protocol AnimalCellDelegate {
    func didTapNoiceButton(for animal: Animal)
    
}
class AnimalCell: UITableViewCell {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var animalCellDelegate: AnimalCellDelegate?
    
    var animal: Animal?
    func configureCell(animal: Animal) {
        self.animal = animal
        emojiLabel.text = animal.emoji
        nameLabel.text = animal.name
    }
    
    @IBAction func didTapNoiseBtn(_ sender: Any) {
        guard let unwerappedAnimal = animal else {return}
        animalCellDelegate?.didTapNoiceButton(for: unwerappedAnimal)
    }
    
}
