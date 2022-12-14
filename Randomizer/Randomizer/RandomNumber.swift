//
//  RandomNumber.swift
//  Randomizer
//
//  Created by Владимир Макаров on 29.11.2021.
//

import Foundation

struct RandomNumber {
    var minimumValue: Int
    var maximumValue: Int
    
    var getRandom: Int {
        Int.random(in: minimumValue...maximumValue)
    }
}
