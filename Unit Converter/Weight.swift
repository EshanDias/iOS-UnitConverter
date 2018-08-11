//
//  Weight.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/11/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import Foundation

class Weight {
    private var weightInGram: Double = 0.0
    private var weightInKilogram:Double = 0.0
    private var weightInPounds:Double = 0.0
    private var weightInOunce:Double = 0.0
    
    init() { }
    
    func setGrams(val:Double) { self.weightInGram = val }
    func setKilograms(val:Double) { self.weightInKilogram = val }
    func setPounds(val:Double) { self.weightInPounds = val }
    func setOunce(val:Double) { self.weightInOunce = val }
    
    func getWeightInGrams() -> Double { return self.weightInGram }
    func getWeightInKilograms() -> Double { return self.weightInKilogram }
    func getWeightInPounds() -> Double { return self.weightInPounds }
    func getWeightInOunce() -> Double { return self.weightInOunce }
    
}
