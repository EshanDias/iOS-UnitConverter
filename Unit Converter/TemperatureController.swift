//
//  TemperatureController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/13/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import Foundation

class TemperatureController {
    private var valueToConvert:Double
    private var temperatureType: WellknownTemperatureType
    
    init(valueToConvert value: String, typeOfValue distanceType: WellknownTemperatureType) {
        self.valueToConvert = Double(value)!
        self.temperatureType = distanceType
    }
    
    private func convertValuesFromCelsius() -> Temperature {
        let temperature = Temperature()
        let F = (valueToConvert * 1.8) + 32
        let K = (valueToConvert + 273.15)
        
        temperature.setCelsius(val: self.valueToConvert)
        temperature.setFahrenheit(val: F)
        temperature.setKelvin(val: K)
        
        return temperature
    }
    
    private func convertValuesFromFahrenheit() -> Temperature {
        self.valueToConvert = (self.valueToConvert - 32) / 1.8
        return convertValuesFromCelsius()
    }
    
    private func convertFromKelvin() -> Temperature {
        self.valueToConvert = self.valueToConvert - 273.15
        return convertValuesFromCelsius()
    }
    
    func convertValues() -> Temperature {
        let temperature: Temperature
        switch temperatureType {
        case WellknownTemperatureType.CELSIUS:
            temperature = self.convertValuesFromCelsius()
        case WellknownTemperatureType.FAHRENHEIT:
            temperature = self.convertValuesFromFahrenheit()
        case WellknownTemperatureType.KELVIN:
            temperature = self.convertFromKelvin()
        }
        return temperature
    }
}
