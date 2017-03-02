//
//  ViewController.swift
//  CP-Prework
//
//  Created by Salima Fassil on 3/1/17.
//  Copyright © 2017 Salima Fassil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var tipPerc: UISegmentedControl!
    @IBOutlet weak var bill: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calcTip(sender: AnyObject) {
        let tipPercentages = [0.15,0.18,0.20]
        let billAmount = Double(bill.text!) ?? 0.00
        let tipAmount = billAmount * tipPercentages[tipPerc.selectedSegmentIndex]
        
        let totalAmount = billAmount + tipAmount
        
        tip.text = String(format: "$%.2f", tipAmount)
        total.text = String(format: "$%.2f", totalAmount)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        let defaults = NSUserDefaults.standardUserDefaults()
        let percValue = defaults.integerForKey("perc")
        print(percValue)
        tipPerc.selectedSegmentIndex = percValue
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
}

