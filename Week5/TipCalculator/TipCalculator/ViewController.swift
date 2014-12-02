//
//  ViewController.swift
//  TipCalculator
//
//  Created by Chatchai on 9/12/2557 BE.
//  Copyright (c) 2557 Chatchai. All rights reserved.
//

import UIKit

class ViewController:UIViewController,UITableViewDelegate {
    
    @IBOutlet var totalTextFile :
        UITextField!
    @IBOutlet var taxPctSlider :
        UISlider!
    @IBOutlet var taxPctLabel :
        UILabel!
    @IBOutlet var result: UITableView!
    
    let tipCalc = TipCalculatorModel(total:33.25,taxPct: 0.06)
    var possibleTips = Dictionary<Int, (tipAmt:Double, total:Double)>()
    var sortedKeys:[Int] = []
    
    @IBAction func calculateTapped(sender : AnyObject){
        tipCalc.total = Double((totalTextFile.text as NSString).doubleValue)
        possibleTips = tipCalc.returnPossibleTips()
        sortedKeys = sorted(Array(possibleTips.keys))
        result.reloadData()
        
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
        //resultsTextView.text = ""
    }
    
    //UITableViewDatasource methods
    func numberOfSectionnInTableView(tableView: UITableView!) -> Int{
        return 1
    }
    func tableView(tableView: UITableView!, numberOfRowsSection section: Int) -> Int {
        return sortedKeys.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        let tipPct = sortedKeys[indexPath.row]
        let tipAmt = possibleTips[tipPct]!.tipAmt
        let total = possibleTips[tipPct]!.total
        
        cell.textLabel!.text = "\(tipPct)%:"
        cell.detailTextLabel!.text = String(format: "Tip: $%0.2f, Total: $%0.2f", tipAmt, total)
        return cell
    }
    
    //delegate
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
        refreshUI()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

