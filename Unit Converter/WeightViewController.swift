//
//  FWeightViewController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/11/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import UIKit

class WeightViewController: BaseViewController {

    @IBOutlet weak var gramTextField: UITextField!
    @IBOutlet weak var kilogramTextField: UITextField!
    @IBOutlet weak var poundTextField: UITextField!
    @IBOutlet weak var ounceTextField: UITextField!
    
    @IBAction func onGramValueChange(_ sender: Any) {
        if (self.gramTextField.text != "") {
            let weightController = WeightController(valueToConvert: self.gramTextField.text!, typeOfValue: WellknownWeightType.GRAM)
            let weights:Weight = weightController.convertValues()
            
            self.kilogramTextField.text = String(weights.getWeightInKilograms())
            self.ounceTextField.text = String(weights.getWeightInOunce())
            self.poundTextField.text = String(weights.getWeightInPounds())
       }
        else {
            buttonClearOnClicked(sender)
        }
    }
    
    @IBAction func onKilogramValueChange(_ sender: Any) {
        if (self.kilogramTextField.text != "") {
            let weightController = WeightController(valueToConvert: self.kilogramTextField.text!, typeOfValue: WellknownWeightType.KILOGRAM)
            let weights:Weight = weightController.convertValues()
        
            self.gramTextField.text = String(weights.getWeightInGrams())
            self.ounceTextField.text = String(weights.getWeightInOunce())
            self.poundTextField.text = String(weights.getWeightInPounds())
        }
        else {
            buttonClearOnClicked(sender)
        }
    }
    
    @IBAction func onPoundValueChange(_ sender: Any) {
        if (self.poundTextField.text != "") {
            let weightController = WeightController(valueToConvert: self.poundTextField.text!, typeOfValue: WellknownWeightType.POUNDS)
            let weights:Weight = weightController.convertValues()
        
            self.gramTextField.text = String(weights.getWeightInGrams())
            self.ounceTextField.text = String(weights.getWeightInOunce())
            self.kilogramTextField.text = String(weights.getWeightInKilograms())
        }
        else {
            buttonClearOnClicked(sender)
        }
    }
    
    @IBAction func onOunceValueChange(_ sender: Any) {
        if (self.ounceTextField.text != "") {
            let weightController = WeightController(valueToConvert: self.ounceTextField.text!, typeOfValue: WellknownWeightType.OUNCE)
            let weights:Weight = weightController.convertValues()
        
            self.gramTextField.text = String(weights.getWeightInGrams())
            self.poundTextField.text = String(weights.getWeightInPounds())
            self.kilogramTextField.text = String(weights.getWeightInKilograms())
        }
        else {
            buttonClearOnClicked(sender)
        }
    }
    
    @IBAction func buttonClearOnClicked(_ sender: Any) {
        self.gramTextField.text = ""
        self.poundTextField.text = ""
        self.kilogramTextField.text = ""
        self.ounceTextField.text = ""
    }
    
}

