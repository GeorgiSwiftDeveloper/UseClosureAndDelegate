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
    static var dog = Animal(emoji: "🐶", name: "Lola", noise: "BARK")
    static var cat = Animal(emoji: "🐱", name: "Murka", noise: "Meow")
    static var snake = Animal(emoji: "🐍", name: "Snay", noise: "Hiss")
    static var pig = Animal(emoji: "🐷", name: "Xru", noise: "Oink")
    static var lion = Animal(emoji: "🦁", name: "Lev", noise: "Roar")
}
