//
//  ViewController.swift
//  TipCalculator
//
//  Created by Chatchai on 9/12/2557 BE.
//  Copyright (c) 2557 Chatchai. All rights reserved.
//

import UIKit

class ViewController:UIViewController {
    
    @IBOutlet var totalTextFile :
        UITextField!
    @IBOutlet var taxPctSlider :
        UISlider!
    @IBOutlet var taxPctLabel :
        UILabel!
    @IBOutlet var resultsTextView :
        UITextView!
    
    let tipCalc = TipCalculatorModel(total:33.25,taxPct: 0.06)
    
    @IBAction func calculateTapped(sender : AnyObject){
        //1
        tipCalc.total = Double((totalTextFile.text as NSString).doubleValue)
        //2
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        //3
        for(tipPct,tipValue) in possibleTips{
            //4
            results += "\(tipPct)%: \(tipValue)\n"
        }
        //5
        resultsTextView.text = results
    }
    @IBAction func taxPercentageChanged(sender : AnyObject){
        tipCalc.taxPct = Double(taxPctSlider.value)/100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender : AnyObject){
        totalTextFile.resignFirstResponder()
    }
    
    
    func refreshUI(){
    
        totalTextFile.text = String(format: "%0.2f" , tipCalc.total)
        taxPctSlider.value = Float(tipCalc.taxPct) * 100.0
        taxPctLabel.text = "Tax Percentage (\(Int(taxPctSlider.value))%)"
        resultsTextView.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

