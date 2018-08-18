//
//  WeightController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/11/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import Foundation

class WeightController {
    // Private attribute of the class which holds the value to convert and the weight type.
    private var valueToConvert:Double
    private var weightType: WellknownWeightType
    
    // Constructor which defines the type of conversion and the and value to convert.
    init(valueToConvert value: String, typeOfValue weightType: WellknownWeightType) {
        self.valueToConvert = Double(value)!
        self.weightType = weightType
    }
    
    // Covert the weight in grams to other weight types.
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
    
    // Executes when user types on the Kilogram field
    // Covert the Kilogram value to Gram and call the convertValuesFromGram to convert to other weight types.
    private func convertValuesFromKilogram() -> Weight {
        self.valueToConvert = self.valueToConvert / 1000
        return convertValuesFromGram()
    }
    
    // Executes when user types on the ounce field
    // Covert the Ounce value to Gram and call the convertValuesFromGram to convert to other weight types.
    private func convertFromOunce() -> Weight {
        self.valueToConvert = self.valueToConvert / 0.03527396195
        return convertValuesFromGram()
    }
    
    // Executes when user types on the Pounds field
    // Covert the Pound value to Gram and call the convertValuesFromGram to convert to other weight types.
    private func convertValuesFromPounds() -> Weight {
        self.valueToConvert = self.valueToConvert * 453.59237
        return convertValuesFromGram()

    }
    
    // This determines which method to call first to convert by checking the weight type entered.
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

// Extending the Double type to make it able to round to a defined number of decimal places.
extension Double {
    func roundToDecimal(_ fractionDigits: Int) -> Double {
        let multiplier = pow(10, Double(fractionDigits))
        return Darwin.round(self * multiplier) / multiplier
    }
}
