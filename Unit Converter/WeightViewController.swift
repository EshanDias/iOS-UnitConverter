//
//  FWeightViewController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/11/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import UIKit

class WeightViewController: BaseViewController {
    
    // Defines al the text fields on the weigth tab.
    @IBOutlet weak var gramTextField: UITextField!
    @IBOutlet weak var kilogramTextField: UITextField!
    @IBOutlet weak var poundTextField: UITextField!
    @IBOutlet weak var ounceTextField: UITextField!
    
    // Executes when the weight on gram values text field changes.
    @IBAction func onGramValueChange(_ sender: Any) {
        
        // Checks if the field is empty
        if (self.gramTextField.text != "") {
            
            // Checks if the value on the text field is the valid value.
            if(Double(self.gramTextField.text!) != nil) {
                
                // Inform the controller about the type of conversion and the value.
                let weightController = WeightController(valueToConvert: self.gramTextField.text!, typeOfValue: WellknownWeightType.GRAM)
                
                // Get the cpnverted weights.
                let weights:Weight = weightController.convertValues()
                
                // Assign the converted weights to the text fields
                self.kilogramTextField.text = String(weights.getWeightInKilograms())
                self.ounceTextField.text = String(weights.getWeightInOunce())
                self.poundTextField.text = String(weights.getWeightInPounds())
            }
            else {
                // Removes the character entered if it isn't a valid value.
                self.gramTextField.text = self.gramTextField.text!.substring(to: self.gramTextField.text!.index(before: self.gramTextField.text!.endIndex))
            }
        }
        else {
            // Clears all the text boxes if the box is empty.
            buttonClearOnClicked(sender)
        }
    }
    
    // Executes when the weight on kilogram text field value changes.
    @IBAction func onKilogramValueChange(_ sender: Any) {
        if (self.kilogramTextField.text != "") {
            if(Double(self.kilogramTextField.text!) != nil) {
                let weightController = WeightController(valueToConvert: self.kilogramTextField.text!, typeOfValue: WellknownWeightType.KILOGRAM)
                let weights:Weight = weightController.convertValues()
                
                self.gramTextField.text = String(weights.getWeightInGrams())
                self.ounceTextField.text = String(weights.getWeightInOunce())
                self.poundTextField.text = String(weights.getWeightInPounds())
            }
            else {
                self.kilogramTextField.text = self.kilogramTextField.text!.substring(to: self.kilogramTextField.text!.index(before: self.kilogramTextField.text!.endIndex))
            }
        }
        else {
            buttonClearOnClicked(sender)
        }
    }
    
    // Executes when the weight in pounds text field value changes.
    @IBAction func onPoundValueChange(_ sender: Any) {
        if (self.poundTextField.text != "") {
            if(Double(self.poundTextField.text!) != nil) {
                let weightController = WeightController(valueToConvert: self.poundTextField.text!, typeOfValue: WellknownWeightType.POUNDS)
                let weights:Weight = weightController.convertValues()
                
                self.gramTextField.text = String(weights.getWeightInGrams())
                self.ounceTextField.text = String(weights.getWeightInOunce())
                self.kilogramTextField.text = String(weights.getWeightInKilograms())
            }
            else {
                self.poundTextField.text = self.poundTextField.text!.substring(to: self.poundTextField.text!.index(before: self.poundTextField.text!.endIndex))
            }
        }
        else {
            buttonClearOnClicked(sender)
        }
    }
    
    // Executes when the weight in Ounce text field value changes.
    @IBAction func onOunceValueChange(_ sender: Any) {
        if (self.ounceTextField.text != "") {
            if(Double(self.ounceTextField.text!) != nil) {
                let weightController = WeightController(valueToConvert: self.ounceTextField.text!, typeOfValue: WellknownWeightType.OUNCE)
                let weights:Weight = weightController.convertValues()
                
                self.gramTextField.text = String(weights.getWeightInGrams())
                self.poundTextField.text = String(weights.getWeightInPounds())
                self.kilogramTextField.text = String(weights.getWeightInKilograms())
            }
            else {
                self.ounceTextField.text = self.ounceTextField.text!.substring(to: self.ounceTextField.text!.index(before: self.ounceTextField.text!.endIndex))
            }
        }
        else {
            buttonClearOnClicked(sender)
        }
    }
    
    // Clears all the text fields in the UI.
    @IBAction func buttonClearOnClicked(_ sender: Any) {
        self.gramTextField.text = ""
        self.poundTextField.text = ""
        self.kilogramTextField.text = ""
        self.ounceTextField.text = ""
    }
    
}

