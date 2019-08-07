//
//  AnimalCell.swift
//  UsingClouserAndDelegate
//
//  Created by Georgi Malkhasyan on 8/7/19.
//  Copyright © 2019 Malkhasyan. All rights reserved.
//

import UIKit


//protocol AnimalCellDelegate {
//    func didTapNoiceButton(for animal: Animal)
//
//}
class AnimalCell: UITableViewCell {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
//    var animalCellDelegate: AnimalCellDelegate?
    
    //Use Closure
    var didTapNoise: ((Animal) -> Void)?
    
    var animalo: Animal?
    func configureCell(animal: Animal) {
        self.animalo = animal
        emojiLabel.text = animal.emoji
        nameLabel.text = animal.name
    }
    
    @IBAction func didTapNoiseBtn(_ sender: Any) {
        guard let unwerappedAnimal = animalo else {return}
        didTapNoise?(unwerappedAnimal)
//        animalCellDelegate?.didTapNoiceButton(for: unwerappedAnimal)
    }
    
}
