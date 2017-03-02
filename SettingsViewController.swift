//
//  SettingsViewController.swift
//  CP-Prework
//
//  Created by Salima Fassil on 3/1/17.
//  Copyright © 2017 Salima Fassil. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultPerc: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        let percValue = defaults.integerForKey("perc")
        print(percValue)
        defaultPerc.selectedSegmentIndex = percValue
         defaults.synchronize()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultPerc.selectedSegmentIndex, forKey: "perc")

    }
}
