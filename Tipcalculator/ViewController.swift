//
//  ViewController.swift
//  Tipcalculator
//
//  Created by Getnet Mekuriyaw on 2/11/20.
//  Copyright © 2020 Getnet Mekuriyaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var Tip: UILabel!
    
    @IBOutlet var amount: UIView!
   
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Gesture(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
   
    }
    
    @IBAction func calculatebill(_ sender: Any) {
        //get the bill amount
        let bill = Double(textfield.text!) ?? 0
        //calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2 ]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = tip + bill

        //update the tip and total labels
        Tip.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

