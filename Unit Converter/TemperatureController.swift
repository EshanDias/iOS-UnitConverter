//
//  TemperatureController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/13/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import Foundation

class TemperatureController {
    
    // Private attribute of the class which holds the value to convert and the temperature type.
    private var valueToConvert:Double
    private var temperatureType: WellknownTemperatureType
    
    // Constructor which defines the type of conversion and the and value to convert.
    init(valueToConvert value: String, typeOfValue distanceType: WellknownTemperatureType) {
        self.valueToConvert = Double(value)!
        self.temperatureType = distanceType
    }
    
    // Convert the Celcius value to other temperature types.
    private func convertValuesFromCelsius() -> Temperature {
        let temperature = Temperature()
        let F = (valueToConvert * 1.8) + 32
        let K = (valueToConvert + 273.15)
        
        temperature.setCelsius(val: self.valueToConvert)
        temperature.setFahrenheit(val: F)
        temperature.setKelvin(val: K)
        
        return temperature
    }
    
    // Executes when user types on the farenheit temperature field
    // Covert the Farenheit value to celsius and call the convertValuesFromCelsius to convert to other temperature types.
    private func convertValuesFromFahrenheit() -> Temperature {
        self.valueToConvert = (self.valueToConvert - 32) / 1.8
        return convertValuesFromCelsius()
    }
    
    // Executes when user types on the Kelvin temperature field
    // Covert the Kelvin value to celsius and call the convertValuesFromCelsius to convert to other temperature types.
    private func convertFromKelvin() -> Temperature {
        self.valueToConvert = self.valueToConvert - 273.15
        return convertValuesFromCelsius()
    }
    
    // Function which determines which method to call first to convert by checking the temperature type entered.
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
