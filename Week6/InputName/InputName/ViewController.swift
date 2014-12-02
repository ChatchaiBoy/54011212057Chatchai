//
//  ViewController.swift
//  InputName
//
//  Created by Chatchai on 9/26/2557 BE.
//  Copyright (c) 2557 Chatchai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
                            
    @IBOutlet var InputName: UITextField!
    
    @IBOutlet var ShowName: UITableView!
    
    @IBAction func EnterName(sender: AnyObject) {
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

