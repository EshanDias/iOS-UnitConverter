//
//  DistanceController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/12/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import Foundation

class DistanceController {
    
    // Private attribute of the class which holds the value to convert and the Distace type.
    private var valueToConvert:Double
    private var distanceType: WellknownDistanceType
    
    // Constructor which defines the type of conversion and the and value to convert.
    init(valueToConvert value: String, typeOfValue distanceType: WellknownDistanceType) {
        self.valueToConvert = Double(value)!
        self.distanceType = distanceType
    }
    
    // Covert the length in metre to other distance types.
    private func convertValuesFromMetre() -> Distance {
        let distances = Distance()
        let km = (valueToConvert / 1000)
        let ft = (valueToConvert / 0.3048)
        let yd = (valueToConvert / 0.9144)
        let mi = (valueToConvert / 1609.344)
        
        distances.setMetres(val: valueToConvert)
        distances.setKilometres(val: km)
        distances.setFeet(val: ft)
        distances.setYards(val: yd)
        distances.setMiles(val: mi)
        
        return distances
    }
    
    // Executes when user types on the KiloMetre field
    // Covert the KiloMetre value to Metres and call the convertValuesFromMetre to convert to other distance types.
    private func convertValuesFromKilometre() -> Distance {
        self.valueToConvert = self.valueToConvert * 1000
        return convertValuesFromMetre()
    }
    
    // Executes when user types on the Feet field
    // Covert the Feet value to Metres and call the convertValuesFromMetre to convert to other distance types.
    private func convertFromFeet() -> Distance {
        self.valueToConvert = self.valueToConvert * 0.3048
        return convertValuesFromMetre()
    }
    
    // Executes when user types on the Yard field
    // Covert the Yard value to Metres and call the convertValuesFromMetre to convert to other distance types.
    private func convertValuesFromYard() -> Distance {
        self.valueToConvert = self.valueToConvert * 0.9144
        return convertValuesFromMetre()
        
    }
    
    // Executes when user types on the Mile field
    // Covert the Mile value to Metres and call the convertValuesFromMetre to convert to other distance types.
    private func convertValuesFromMile() -> Distance {
        self.valueToConvert = self.valueToConvert * 1609.344
        return convertValuesFromMetre()
    }
    
    // This determines which method to call first to convert by checking the distance type entered.
    func convertValues() -> Distance {
        let distance: Distance
        switch distanceType {
        case WellknownDistanceType.METRE:
            distance = self.convertValuesFromMetre()
        case WellknownDistanceType.KILOMETRE:
            distance = self.convertValuesFromKilometre()
        case WellknownDistanceType.FEET:
            distance = self.convertFromFeet()
        case WellknownDistanceType.YARD:
            distance = self.convertValuesFromYard()
        case WellknownDistanceType.MILE:
            distance = self.convertValuesFromMile()
        }
        return distance
    }
}
