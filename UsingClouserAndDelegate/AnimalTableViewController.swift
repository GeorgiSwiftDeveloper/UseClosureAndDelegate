//
//  AnimalTableViewController.swift
//  UsingClouserAndDelegate
//
//  Created by Georgi Malkhasyan on 8/7/19.
//  Copyright © 2019 Malkhasyan. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {

    let alertService = AlertService()
    
    
    let animals: [Animal] = [.dog,.cat,.snake,.pig,.lion]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as? AnimalCell
        let animal = animals[indexPath.row]
//        cell?.animalCellDelegate = self
        cell?.didTapNoise = {[weak self] animal in
            let alert = self?.alertService.alert(mesage: animal.noise)
            self?.present(alert!, animated: true, completion: nil)
        }
        cell?.configureCell(animal: animal)
        return cell!
    }

}

//extension AnimalTableViewController: AnimalCellDelegate  {
//    func didTapNoiceButton(for animal: Animal) {
//        let alert = alertService.alert(mesage: animal.noise)
//        present(alert, animated: true, completion: nil)
//    }
//

//}
