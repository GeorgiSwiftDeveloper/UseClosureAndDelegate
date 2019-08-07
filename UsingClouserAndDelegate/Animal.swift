//
//  Animal.swift
//  UsingClouserAndDelegate
//
//  Created by Georgi Malkhasyan on 8/7/19.
//  Copyright © 2019 Malkhasyan. All rights reserved.
//

import Foundation
struct Animal {
    let emoji: String
    let name: String
    let noise: String
    
}


extension Animal {
    static var dog = Animal(emoji: "Dog", name: "Lola", noise: "BARK")
    static var cat = Animal(emoji: "Cat", name: "Murka", noise: "Meow")
    static var snake = Animal(emoji: "Snake", name: "Snay", noise: "Hiss")
    static var pig = Animal(emoji: "Pig", name: "Xru", noise: "Oink")
    static var lion = Animal(emoji: "Lion", name: "Lev", noise: "Roar")
}
