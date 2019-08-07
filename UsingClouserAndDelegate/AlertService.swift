//
//  AlertService.swift
//  UsingClouserAndDelegate
//
//  Created by Georgi Malkhasyan on 8/7/19.
//  Copyright © 2019 Malkhasyan. All rights reserved.
//

import Foundation
import UIKit

class AlertService {
    func alert(mesage: String) -> UIAlertController {
        let alert = UIAlertController(title: nil, message: mesage, preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Dissmisss", style: .cancel, handler: nil)
        alert.addAction(action)
    }
}
