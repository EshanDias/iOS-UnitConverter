//
//  DistanceViewController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/11/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import UIKit

class DistanceViewController: BaseViewController {
    
    @IBOutlet weak var metreTextField: UITextField!
    @IBOutlet weak var footTextField: UITextField!
    @IBOutlet weak var yardTextField: UITextField!
    @IBOutlet weak var kilometreTextField: UITextField!
    @IBOutlet weak var mileTextField: UITextField!
    
    @IBAction func metreValueOnChange(_ sender: Any) {
        if (self.metreTextField.text != "") {
            if(Double(self.metreTextField.text!) != nil) {
                let distanceController = DistanceController(valueToConvert: self.metreTextField.text!, typeOfValue: WellknownDistanceType.METRE)
                let distances:Distance = distanceController.convertValues()
                
                self.kilometreTextField.text = String(distances.getdistanceInKilometres())
                self.footTextField.text = String(distances.getdistanceInFeet())
                self.yardTextField.text = String(distances.getdistanceInYards())
                self.mileTextField.text = String(distances.getdistanceInMiles())
            }
            else {
                self.metreTextField.text = self.metreTextField.text!.substring(to: self.metreTextField.text!.index(before: self.metreTextField.text!.endIndex))
            }
        }
        else {
            clearButtonOnClick(sender)
        }
    }
    
    @IBAction func footValueOnChange(_ sender: Any) {
        if (self.footTextField.text != "") {
            if(Double(self.footTextField.text!) != nil) {
                let distanceController = DistanceController(valueToConvert: self.footTextField.text!, typeOfValue: WellknownDistanceType.FEET)
                let distances:Distance = distanceController.convertValues()
                
                self.kilometreTextField.text = String(distances.getdistanceInKilometres())
                self.metreTextField.text = String(distances.getdistanceInMetres())
                self.yardTextField.text = String(distances.getdistanceInYards())
                self.mileTextField.text = String(distances.getdistanceInMiles())
            }
            else {
                self.footTextField.text = self.footTextField.text!.substring(to: self.footTextField.text!.index(before: self.footTextField.text!.endIndex))            }
        }
        else {
            clearButtonOnClick(sender)
        }
    }
    
    @IBAction func yardValueOnChange(_ sender: Any) {
        if (self.yardTextField.text != "") {
            if(Double(self.yardTextField.text!) != nil) {
                let distanceController = DistanceController(valueToConvert: self.yardTextField.text!, typeOfValue: WellknownDistanceType.YARD)
                let distances:Distance = distanceController.convertValues()
                
                self.kilometreTextField.text = String(distances.getdistanceInKilometres())
                self.footTextField.text = String(distances.getdistanceInFeet())
                self.metreTextField.text = String(distances.getdistanceInMetres())
                self.mileTextField.text = String(distances.getdistanceInMiles())
            }
            else {
                self.yardTextField.text = self.yardTextField.text!.substring(to: self.yardTextField.text!.index(before: self.yardTextField.text!.endIndex))
            }
        }
        else {
            clearButtonOnClick(sender)
        }
    }
    
    @IBAction func kilometreValueOnChange(_ sender: Any) {
        if (self.kilometreTextField.text != "") {
            if(Double(self.kilometreTextField.text!) != nil) {
                let distanceController = DistanceController(valueToConvert: self.kilometreTextField.text!, typeOfValue: WellknownDistanceType.KILOMETRE)
                let distances:Distance = distanceController.convertValues()
                
                self.metreTextField.text = String(distances.getdistanceInMetres())
                self.footTextField.text = String(distances.getdistanceInFeet())
                self.yardTextField.text = String(distances.getdistanceInYards())
                self.mileTextField.text = String(distances.getdistanceInMiles())
            }
            else {
                self.kilometreTextField.text = self.kilometreTextField.text!.substring(to: self.kilometreTextField.text!.index(before: self.kilometreTextField.text!.endIndex))
            }
        }
        else {
            clearButtonOnClick(sender)
        }
    }
    
    @IBAction func mileValueOnChange(_ sender: Any) {
        if (self.mileTextField.text != "") {
            if(Double(self.mileTextField.text!) != nil) {
                let distanceController = DistanceController(valueToConvert: self.mileTextField.text!, typeOfValue: WellknownDistanceType.MILE)
                let distances:Distance = distanceController.convertValues()
                
                self.kilometreTextField.text = String(distances.getdistanceInKilometres())
                self.footTextField.text = String(distances.getdistanceInFeet())
                self.yardTextField.text = String(distances.getdistanceInYards())
                self.metreTextField.text = String(distances.getdistanceInMetres())
            }
            else {
                self.mileTextField.text = self.mileTextField.text!.substring(to: self.mileTextField.text!.index(before: self.mileTextField.text!.endIndex))
            }
        }
        else {
            clearButtonOnClick(sender)
        }
    }
    
    @IBAction func clearButtonOnClick(_ sender: Any) {
        self.kilometreTextField.text = ""
        self.footTextField.text = ""
        self.yardTextField.text = ""
        self.mileTextField.text = ""
        self.metreTextField.text = ""
    }
}

