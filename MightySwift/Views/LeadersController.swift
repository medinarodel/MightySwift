//
//  LeadersController.swift
//  MightySwift
//
//  Created by Rodel Medina on 4/9/15.
//  Copyright (c) 2015 Rodel Medina. All rights reserved.
//

import UIKit

class LeadersController: TemplateController, UITableViewDataSource, UITableViewDelegate {
    
        var tableView: UITableView = UITableView()
        var items: [String] = ["User 1", "User 2", "User 3",
            "User 4", "User 5", "User 6", "User 7", "User 8",
            "User 9", "User 10", "User 11", "User 12", "User 13",
            "User 14", "User 15"]

        override func viewDidLoad() {
            super.viewDidLoad()
            
            tableView.frame         =   CGRectMake(0, 0, Constants.Sizes.windowWidth, Constants.Sizes.contentHeight);
            tableView.delegate      =   self
            tableView.dataSource    =   self
            
            tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
            var tblView =  UIView(frame: CGRectZero)
            tableView.tableFooterView = tblView
            tableView.tableFooterView!.hidden = true
            
            
            self.view.addSubview(tableView)
        }
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count
        }
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
            
            cell.textLabel?.text = self.items[indexPath.row]
            
            return cell
        }
        
}