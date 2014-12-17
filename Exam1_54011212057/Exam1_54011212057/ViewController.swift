//
//  ViewController.swift
//  Exam1_54011212057
//
//  Created by student on 10/10/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate{

    @IBOutlet var TeName: UITextField!
    @IBOutlet var TeVolume: UITextField!
    @IBOutlet var TePrice: UITextField!
    @IBOutlet var Output: UITextField!
    
    @IBOutlet var tableView: UITableView!
    @IBAction func BuTotal(sender: AnyObject) {
        Output.text = TePrice.text + TePrice.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

