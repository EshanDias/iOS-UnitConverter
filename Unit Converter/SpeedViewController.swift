//
//  SpeedViewController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/11/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import UIKit

class SpeedViewController: BaseViewController {
    
    // Assigning the textfields on the current UI
    @IBOutlet weak var mpsTextField: UITextField!
    @IBOutlet weak var ftpmTextField: UITextField!
    @IBOutlet weak var kmphTextField: UITextField!
    @IBOutlet weak var mphTextField: UITextField!
    
    // Executes when meters per second text field value changes.
    @IBAction func mpsOnValueChange(_ sender: Any) {
        if (self.mpsTextField.text != "") {
            if(Double(self.mpsTextField.text!) != nil) {
                let speedController = SpeedController(valueToConvert: self.mpsTextField.text!, typeOfValue: WellknownSpeedType.METERS_PER_SECOND)
                let speeds:Speed = speedController.convertValues()
                
                self.kmphTextField.text = String(speeds.getSpeedInKMPH())
                self.ftpmTextField.text = String(speeds.getSpeedInFTPM())
                self.mphTextField.text = String(speeds.getSpeedInMPH())
                
            }
            else {
                self.mpsTextField.text = self.mpsTextField.text!.substring(to: self.mpsTextField.text!.index(before: self.mpsTextField.text!.endIndex))
            }
        }
        else {
            clearButtonOnClick(sender)
        }
    }
    
    // Executes when foot per minute text field value changes
    @IBAction func ftpmOnValueChange(_ sender: Any) {
        if (self.ftpmTextField.text != "") {
            if(Double(self.ftpmTextField.text!) != nil) {
                
                let speedController = SpeedController(valueToConvert: self.ftpmTextField.text!, typeOfValue: WellknownSpeedType.FEET_PER_MINUTE)
                let speeds:Speed = speedController.convertValues()
                
                self.kmphTextField.text = String(speeds.getSpeedInKMPH())
                self.mpsTextField.text = String(speeds.getSpeedInMPS())
                self.mphTextField.text = String(speeds.getSpeedInMPH())
            }
            else {
                self.ftpmTextField.text = self.ftpmTextField.text!.substring(to: self.ftpmTextField.text!.index(before: self.ftpmTextField.text!.endIndex))
            }
        }
        else {
            clearButtonOnClick(sender)
        }
    }
    
    // Executes when kilo meters per hour text field value changes
    @IBAction func kmphOnValueChange(_ sender: Any) {
        if (self.kmphTextField.text != "") {
            if(Double(self.kmphTextField.text!) != nil) {
                
                let speedController = SpeedController(valueToConvert: self.kmphTextField.text!, typeOfValue: WellknownSpeedType.KILOMETERS_PER_HOUR)
                let speeds:Speed = speedController.convertValues()
                
                self.mpsTextField.text = String(speeds.getSpeedInMPS())
                self.ftpmTextField.text = String(speeds.getSpeedInFTPM())
                self.mphTextField.text = String(speeds.getSpeedInMPH())
            }
            else {
                self.kmphTextField.text = self.kmphTextField.text!.substring(to: self.kmphTextField.text!.index(before: self.kmphTextField.text!.endIndex))
            }
        }
        else {
            clearButtonOnClick(sender)
        }
    }
    
    // Executes when miles per hour text field value changes
    @IBAction func mphOnValueChange(_ sender: Any) {
        if (self.mphTextField.text != "") {
            if(Double(self.mphTextField.text!) != nil) {
                
                let speedController = SpeedController(valueToConvert: self.mphTextField.text!, typeOfValue: WellknownSpeedType.MILES_PER_HOUR)
                let speeds:Speed = speedController.convertValues()
                
                self.kmphTextField.text = String(speeds.getSpeedInKMPH())
                self.ftpmTextField.text = String(speeds.getSpeedInFTPM())
                self.mpsTextField.text = String(speeds.getSpeedInMPS())
            }
            else {
                self.mphTextField.text = self.mphTextField.text!.substring(to: self.mphTextField.text!.index(before: self.mphTextField.text!.endIndex))
            }
        }
        else {
            clearButtonOnClick(sender)
        }
    }
    
    // Clears all the text fields
    @IBAction func clearButtonOnClick(_ sender: Any) {
        self.kmphTextField.text = ""
        self.ftpmTextField.text = ""
        self.mpsTextField.text = ""
        self.mphTextField.text = ""
    }
}
