//
//  ViewController.swift
//  SmartTipper
//
//  Created by Drew Beckmen on 8/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets: elements of screen you want to configure
    //allows you to access the view element from the storyboard
    //convention: end with type of view (Label, Control, etc.)
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let defaultTipSelected = defaults.double(forKey: "defaultTip")
        let percentages = [0.15, 0.18, 0.2]
        let selectedIndex = percentages.firstIndex(of: defaultTipSelected) ?? 0
        tipControl.selectedSegmentIndex = selectedIndex
        billAmountTextField.becomeFirstResponder()

        let darkMode = defaults.bool(forKey: "darkMode")
        
        if darkMode {
            overrideUserInterfaceStyle = .dark
        }
        else {
            overrideUserInterfaceStyle = .light
        }
        
        calculateTip(Any.self)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    //Everything originates from a user action
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //already attached "Value Changed" event from segmented control
        // ?? operator will assign bill to 0 if casting is unsuccessful
        let defaults = UserDefaults.standard
        let value = defaults.bool(forKey: "roundUp")
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        var tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        var total = bill + tip
        
        //update labels with newly calculated values

        //if you want to round the tip
        if value {
            let nextHighestNum = total.rounded(.up)
            let amountAdded = nextHighestNum - total
            total = nextHighestNum
            tip = tip + amountAdded
        }
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

