//
//  Temperature.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/13/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import Foundation

class Temperature {
    private var temperatureInCelsius: Double = 0.0
    private var temperatureInFahrenheit:Double = 0.0
    private var temperatureInKelvin:Double = 0.0
    
    init() { }
    
    func setCelsius(val:Double) { self.temperatureInCelsius = val }
    func setFahrenheit(val:Double) { self.temperatureInFahrenheit = val }
    func setKelvin(val:Double) { self.temperatureInKelvin = val }
    
    func getTemperatureInCelsius() -> Double { return self.temperatureInCelsius }
    func getTemperatureInFahrenheir() -> Double { return self.temperatureInFahrenheit }
    func getTemperatureInKelvin() -> Double { return self.temperatureInKelvin }
    
}
