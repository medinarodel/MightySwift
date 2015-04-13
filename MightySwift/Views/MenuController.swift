//
//  Menu.swift
//  MightySwift
//
//  Created by Rodel Medina on 4/10/15.
//  Copyright (c) 2015 Rodel Medina. All rights reserved.
//

import UIKit

class MenuController: TemplateController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView: UITableView = UITableView()
    var personal: [String] = ["Profile", "Password", "Settings"]

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
        return personal.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.textLabel?.text = personal[indexPath.row]
        
        return cell
    }
    
}