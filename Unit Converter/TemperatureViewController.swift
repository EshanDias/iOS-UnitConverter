//
//  TemperatureViewController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/11/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import UIKit

class TemperatureViewController: BaseViewController {

    // Assigning the text fields on the current UI
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fahrenheitTextField: UITextField!
    @IBOutlet weak var kelvinTextField: UITextField!
    
//    let regexPattern = "(\\-{0,1})?(\\d{0,})(\\.{0,1})(\\d{1,})"
    
    // Executes when the celcius text field value changes.
    @IBAction func celsiusOnValueChange(_ sender: Any) {
        
        if self.celsiusTextField.text != "" {
//            if (isMatched(regexPattern: regexPattern, stringToCompare: self.celsiusTextField.text!)) {
            if (self.celsiusTextField.text == "-") { }
            else if (Double(self.celsiusTextField.text!) != nil) {
                let temperatureController = TemperatureController(valueToConvert: self.celsiusTextField.text!, typeOfValue: WellknownTemperatureType.CELSIUS)
                let temperature:Temperature = temperatureController.convertValues()
                
                self.fahrenheitTextField.text = String(temperature.getTemperatureInFahrenheir())
                self.kelvinTextField.text = String(temperature.getTemperatureInKelvin())
            }
            else {
                self.celsiusTextField.text = self.celsiusTextField.text!.substring(to: self.celsiusTextField.text!.index(before: self.celsiusTextField.text!.endIndex))
            }
        }
        else if self.celsiusTextField.text == "" {
            clearButtonOnClick(sender)
        }
    }
    
    
    // Executes when the farenheit text field value changes.
    @IBAction func fahrenheitOnValueChange(_ sender: Any) {
        if (self.fahrenheitTextField.text != "") {
            if(self.fahrenheitTextField.text == "-") { }
            else if (Double(self.fahrenheitTextField.text!) != nil) {
                let temperatureController = TemperatureController(valueToConvert: self.fahrenheitTextField.text!, typeOfValue: WellknownTemperatureType.FAHRENHEIT)
                let temperature:Temperature = temperatureController.convertValues()
            
                self.celsiusTextField.text = String(temperature.getTemperatureInCelsius())
                self.kelvinTextField.text = String(temperature.getTemperatureInKelvin())
            }
            else {
                self.fahrenheitTextField.text = self.fahrenheitTextField.text!.substring(to: self.fahrenheitTextField.text!.index(before: self.fahrenheitTextField.text!.endIndex))
            }
        }
        else if self.fahrenheitTextField.text == "" {
            clearButtonOnClick(sender)
        }
    }
    
    // Executes when the kelvin textfield value changes.
    @IBAction func kelvinOnValueChange(_ sender: Any) {
        if (self.kelvinTextField.text != "") {
            if(self.kelvinTextField.text == "-") { }
            else if (Double(self.kelvinTextField.text!) != nil) {
                let temperatureController = TemperatureController(valueToConvert: self.kelvinTextField.text!, typeOfValue: WellknownTemperatureType.KELVIN)
                let temperature:Temperature = temperatureController.convertValues()
            
                self.fahrenheitTextField.text = String(temperature.getTemperatureInFahrenheir())
                self.celsiusTextField.text = String(temperature.getTemperatureInCelsius())
            }
            else {
                self.kelvinTextField.text = self.kelvinTextField.text!.substring(to: self.kelvinTextField.text!.index(before: self.kelvinTextField.text!.endIndex))
            }
        }
        else if self.kelvinTextField.text == "" {
            clearButtonOnClick(sender)
        }
    }
    
    // Clears all the text fields
    @IBAction func clearButtonOnClick(_ sender: Any) {
        self.celsiusTextField.text = ""
        self.fahrenheitTextField.text = ""
        self.kelvinTextField.text = ""
    }
    
}
