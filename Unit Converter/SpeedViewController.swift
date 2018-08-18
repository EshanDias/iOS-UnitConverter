//
//  SpeedViewController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/11/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import UIKit

class SpeedViewController: BaseViewController {
    
    @IBOutlet weak var mpsTextField: UITextField!
    @IBOutlet weak var ftpsTextField: UITextField!
    @IBOutlet weak var kmphTextField: UITextField!
    @IBOutlet weak var mphTextField: UITextField!
    
    @IBAction func mpsOnValueChange(_ sender: Any) {
        if (self.mpsTextField.text != "") {
            if(Double(self.mpsTextField.text!) != nil) {
                let speedController = SpeedController(valueToConvert: self.mpsTextField.text!, typeOfValue: WellknownSpeedType.METERS_PER_SECOND)
                let speeds:Speed = speedController.convertValues()
                
                self.kmphTextField.text = String(speeds.getSpeedInKMPH())
                self.ftpsTextField.text = String(speeds.getSpeedInFTPM())
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
    
    @IBAction func ftpsOnValueChange(_ sender: Any) {
        if (self.ftpsTextField.text != "") {
            if(Double(self.mpsTextField.text!) != nil) {
                
                let speedController = SpeedController(valueToConvert: self.ftpsTextField.text!, typeOfValue: WellknownSpeedType.FEET_PER_HOUR)
                let speeds:Speed = speedController.convertValues()
                
                self.kmphTextField.text = String(speeds.getSpeedInKMPH())
                self.mpsTextField.text = String(speeds.getSpeedInMPS())
                self.mphTextField.text = String(speeds.getSpeedInMPH())
            }
            else {
                self.ftpsTextField.text = self.ftpsTextField.text!.substring(to: self.ftpsTextField.text!.index(before: self.ftpsTextField.text!.endIndex))
            }
        }
        else {
            clearButtonOnClick(sender)
        }
    }
    
    @IBAction func kmphOnValueChange(_ sender: Any) {
        if (self.kmphTextField.text != "") {
            if(Double(self.kmphTextField.text!) != nil) {
                
                let speedController = SpeedController(valueToConvert: self.kmphTextField.text!, typeOfValue: WellknownSpeedType.KILOMETERS_PER_HOUR)
                let speeds:Speed = speedController.convertValues()
                
                self.mpsTextField.text = String(speeds.getSpeedInMPS())
                self.ftpsTextField.text = String(speeds.getSpeedInFTPM())
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
    
    @IBAction func mphOnValueChange(_ sender: Any) {
        if (self.mphTextField.text != "") {
            if(Double(self.mphTextField.text!) != nil) {
                
                let speedController = SpeedController(valueToConvert: self.mphTextField.text!, typeOfValue: WellknownSpeedType.MILES_PER_HOUR)
                let speeds:Speed = speedController.convertValues()
                
                self.kmphTextField.text = String(speeds.getSpeedInKMPH())
                self.ftpsTextField.text = String(speeds.getSpeedInFTPM())
                self.mpsTextField.text = String(speeds.getSpeedInMPS())
            }
            else {
                self.mphTextField.text = self.mphTextField.text![0...(self.mphTextField.text!.characters.count - 2)]
            }
        }
        else {
            clearButtonOnClick(sender)
        }
    }
    
    @IBAction func clearButtonOnClick(_ sender: Any) {
        self.kmphTextField.text = ""
        self.ftpsTextField.text = ""
        self.mpsTextField.text = ""
        self.mphTextField.text = ""
    }
}
