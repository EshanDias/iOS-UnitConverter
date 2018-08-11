//
//  WeightController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/11/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import Foundation

class WeightController {
    private var valueToConvert:Double
    private var weightType: WellknownWeightType
    
    init(valueToConvert value: String, typeOfValue weightType: WellknownWeightType) {
        self.valueToConvert = Double(value)!
        self.weightType = weightType
    }
    
    private func convertValuesFromGram() -> Weight {
        let weights = Weight()
        let kg = (valueToConvert / 1000).roundToDecimal(10)
        let lb = (valueToConvert / 453.59237).roundToDecimal(10)
        let oz = (valueToConvert * 0.03527396195).roundToDecimal(10)
        
        weights.setGrams(val: valueToConvert)
        weights.setKilograms(val: kg)
        weights.setOunce(val: oz)
        weights.setPounds(val: lb)
        
        return weights
    }
    
    private func convertValuesFromKilogram() -> Weight {
        self.valueToConvert = self.valueToConvert / 1000
        return convertValuesFromGram()
    }
    
    private func convertFromOunce() -> Weight {
        self.valueToConvert = self.valueToConvert / 0.03527396195
        return convertValuesFromGram()
    }
    
    private func convertValuesFromPounds() -> Weight {
        self.valueToConvert = self.valueToConvert * 453.59237
        return convertValuesFromGram()

    }
    
    func convertValues() -> Weight {
        let weight: Weight
        switch weightType {
            case WellknownWeightType.GRAM:
                weight = self.convertValuesFromGram()
            case WellknownWeightType.KILOGRAM:
                weight = self.convertValuesFromKilogram()
            case WellknownWeightType.OUNCE:
                weight = self.convertFromOunce()
            case WellknownWeightType.POUNDS:
                weight = self.convertValuesFromPounds()
        }
        return weight
    }
}

extension Double {
    func roundToDecimal(_ fractionDigits: Int) -> Double {
        let multiplier = pow(10, Double(fractionDigits))
        return Darwin.round(self * multiplier) / multiplier
    }
}
