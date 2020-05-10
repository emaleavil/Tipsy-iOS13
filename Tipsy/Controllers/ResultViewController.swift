//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Emanuel Leal Vila on 06/05/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var numberOfPeople: Double? = nil
    var percentage: Int? = nil
    var total: Double? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let percentage = percentage, let numberOfPeople = numberOfPeople, let total = total {
            totalLabel.text = String(format: "%.2f", total)
            settingsLabel.text = "Split between \(Int(numberOfPeople)), with \(percentage)% tip."
        }
    }
}
