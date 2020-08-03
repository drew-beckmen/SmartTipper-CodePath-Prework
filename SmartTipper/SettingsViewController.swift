//
//  SettingsViewController.swift
//  SmartTipper
//
//  Created by Drew Beckmen on 8/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    @IBOutlet weak var roundSwitch: UISwitch!
    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        defaultTipControl.selectedSegmentIndex = UISegmentedControl.noSegment
        
        let defaults = UserDefaults.standard
        let isRounding = defaults.bool(forKey: "roundUp")
        let darkMode = defaults.bool(forKey: "darkMode")
        if isRounding {
            roundSwitch.isOn = true
        }
        else {
            roundSwitch.isOn = false
        }
        
        if darkMode {
            overrideUserInterfaceStyle = .dark
            darkModeSwitch.isOn = true
        }
        else {
            overrideUserInterfaceStyle = .light
            darkModeSwitch.isOn = false
        }
    }
    
    @IBAction func setDefaultTip(_ sender: Any) {
        let tipAmounts = [0.15, 0.18, 0.2]
        let currentIndex = defaultTipControl.selectedSegmentIndex
        print(currentIndex)
        let defaults = UserDefaults.standard
        defaults.set(tipAmounts[currentIndex], forKey: "defaultTip")
        defaults.synchronize()
    }
    
    @IBAction func changeRoundUp(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(roundSwitch.isOn, forKey: "roundUp")
        defaults.synchronize()
    }
    
    @IBAction func toggleDarkMode(_ sender: Any) {
        let defaults = UserDefaults.standard
        if darkModeSwitch.isOn {
            overrideUserInterfaceStyle = .dark
        }
        else {
            overrideUserInterfaceStyle = .light
        }
        defaults.set(darkModeSwitch.isOn, forKey: "darkMode")
        defaults.synchronize()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
