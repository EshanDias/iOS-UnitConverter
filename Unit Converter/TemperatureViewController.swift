//
//  TemperatureViewController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/11/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import UIKit

class TemperatureViewController: BaseViewController {

    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fahrenheitTextField: UITextField!
    @IBOutlet weak var kelvinTextField: UITextField!
    
    let regexPattern = "(\\-{0,1})?(\\d{0,})(\\.{0,1})(\\d{1,})"
    
    @IBAction func celsiusOnValueChange(_ sender: Any) {
        
        
        if self.celsiusTextField.text != "" {
            if (isMatched(regexPattern: regexPattern, stringToCompare: self.celsiusTextField.text!)) {
                let temperatureController = TemperatureController(valueToConvert: self.celsiusTextField.text!, typeOfValue: WellknownTemperatureType.CELSIUS)
                let temperature:Temperature = temperatureController.convertValues()
                
                self.fahrenheitTextField.text = String(temperature.getTemperatureInFahrenheir())
                self.kelvinTextField.text = String(temperature.getTemperatureInKelvin())
            }
        }
        else if self.celsiusTextField.text == "" {
            clearButtonOnClick(sender)
        }
    }
    
    @IBAction func fahrenheitOnValueChange(_ sender: Any) {
        if (self.fahrenheitTextField.text != "") {
            if (isMatched(regexPattern: regexPattern, stringToCompare: self.fahrenheitTextField.text!)) {
                let temperatureController = TemperatureController(valueToConvert: self.fahrenheitTextField.text!, typeOfValue: WellknownTemperatureType.FAHRENHEIT)
                let temperature:Temperature = temperatureController.convertValues()
            
                self.celsiusTextField.text = String(temperature.getTemperatureInCelsius())
                self.kelvinTextField.text = String(temperature.getTemperatureInKelvin())
            }
        }
        else if self.fahrenheitTextField.text == "" {
            clearButtonOnClick(sender)
        }
    }
    
    @IBAction func kelvinOnValueChange(_ sender: Any) {
        if (self.kelvinTextField.text != "") {
            if (isMatched(regexPattern: regexPattern, stringToCompare: self.fahrenheitTextField.text!)) {
                let temperatureController = TemperatureController(valueToConvert: self.kelvinTextField.text!, typeOfValue: WellknownTemperatureType.KELVIN)
                let temperature:Temperature = temperatureController.convertValues()
            
                self.fahrenheitTextField.text = String(temperature.getTemperatureInFahrenheir())
                self.celsiusTextField.text = String(temperature.getTemperatureInCelsius())
            }
        }
        else if self.kelvinTextField.text == "" {
            clearButtonOnClick(sender)
        }
    }
    
    @IBAction func clearButtonOnClick(_ sender: Any) {
        self.celsiusTextField.text = ""
        self.fahrenheitTextField.text = ""
        self.kelvinTextField.text = ""
    }
    
}
