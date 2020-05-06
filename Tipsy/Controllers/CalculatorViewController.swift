//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var percentage = 0.1
    var splitBy = 2.0
    var inputValue = 0.0

    @IBAction func tipChanged(_ sender: UIButton) {
        let id = sender.accessibilityIdentifier
        switch id {
        case "zeroBtn":
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            percentage = 0.0
        case "tenBtn":
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            percentage = 0.1
        case "twentyBtn":
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            percentage = 0.2
        default:
                print("No identifier found.")
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitBy = sender.value
        splitNumberLabel.text = "\(Int(splitBy))"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        inputValue = (billTextField.text as NSString?)?.doubleValue ?? 0.0
        print("Percentage selected: \(percentage)")
        print("Splitted by: \(splitBy)")
        print("Value: \(inputValue)")
        
        let result = (inputValue + (inputValue * percentage)) / splitBy
        print("Result: \(result)")
    }
    
}

