//
//  DistanceController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/12/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import Foundation

class DistanceController {
    private var valueToConvert:Double
    private var distanceType: WellknownDistanceType
    
    init(valueToConvert value: String, typeOfValue distanceType: WellknownDistanceType) {
        self.valueToConvert = Double(value)!
        self.distanceType = distanceType
    }
    
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
    
    private func convertValuesFromKilometre() -> Distance {
        self.valueToConvert = self.valueToConvert * 1000
        return convertValuesFromMetre()
    }
    
    private func convertFromFeet() -> Distance {
        self.valueToConvert = self.valueToConvert * 0.3048
        return convertValuesFromMetre()
    }
    
    private func convertValuesFromYard() -> Distance {
        self.valueToConvert = self.valueToConvert * 0.9144
        return convertValuesFromMetre()
        
    }
    
    private func convertValuesFromMile() -> Distance {
        self.valueToConvert = self.valueToConvert * 1609.344
        return convertValuesFromMetre()
        
    }
    
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
