//
//  ViewController.swift
//  IOS8SwiftProtocalCells
//
//  Created by Chatchai on 9/24/2557 BE.
//  Copyright (c) 2557 Chatchai. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    let cellIdentifire = "cellIdentifire"
    var tableData = ["Bus","Helicopter","Truck"]
    
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.registerClass(UItableViewCell.self, forCellReuseIdentifire: self.cellIdentifire)
    }
    func numberOfSectionIntableView(tableView:UItableView!) -> Int{
        return 1
    }
    func tableView(tableView: UItableView!, NumberOfRowsSection section: Int) ->Int{
        return tableData.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath: NSIndexPath!) -> UITableViewCell!{
        var cell = tableView!.dequeueReusableCellWithIdentifier(self.cellIdentifire) as UITableViewCell
        cell.textLabel!.text = self.tableData[indexPath.row]
        var imageName = UIImage(named: tableData[indexPath.row]))
        cell.imageView!.image = imageName
        return cell
    }
    func tableView(tableView: UITableView!,didSelectRowAtIndexPath indexPath: NSIndexPath)

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

