//
//  SpeedController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/12/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import Foundation

class SpeedController {
    private var valueToConvert:Double
    private var speedType: WellknownSpeedType
    
    init(valueToConvert value: String, typeOfValue speedType: WellknownSpeedType) {
        self.valueToConvert = Double(value)!
        self.speedType = speedType
    }
    
    private func convertValuesFromMPS() -> Speed {
        let speeds = Speed()
        let kmph = valueToConvert * (1 * 60 * 60) / 1000
        let ftpm = valueToConvert * 60 /  0.3048
        let mph = valueToConvert * (1 * 60 * 60) / 1609.344
        
        speeds.setMPS(val: valueToConvert)
        speeds.setKMPH(val: kmph)
        speeds.setFTPM(val: ftpm)
        speeds.setMPH(val: mph)
        
        return speeds
    }
    
    private func convertValuesFromKMPH() -> Speed {
        self.valueToConvert = (self.valueToConvert * 1000) / (1 * 60 * 60)
        return convertValuesFromMPS()
    }
    
    private func convertFromFPM() -> Speed {
        self.valueToConvert = (self.valueToConvert * 0.3048) / (60)
        return convertValuesFromMPS()
    }
    
    private func convertValuesFromMPH() -> Speed {
        self.valueToConvert = (self.valueToConvert * 1609.344) / (1 * 60 * 60)
        return convertValuesFromMPS()
        
    }
    
    func convertValues() -> Speed {
        let speed: Speed
        switch speedType {
            case WellknownSpeedType.METERS_PER_SECOND:
                speed = self.convertValuesFromMPS()
            case WellknownSpeedType.KILOMETERS_PER_HOUR:
                speed = self.convertValuesFromKMPH()
            case WellknownSpeedType.FEET_PER_HOUR:
                speed = self.convertFromFPM()
            case WellknownSpeedType.MILES_PER_HOUR:
                speed = self.convertValuesFromMPH()
        }
        return speed
    }
}
