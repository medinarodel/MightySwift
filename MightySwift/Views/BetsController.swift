//
//  BetsController.swift
//  MightySwift
//
//  Created by Rodel Medina on 4/9/15.
//  Copyright (c) 2015 Rodel Medina. All rights reserved.
//

import UIKit

class BetsController: TemplateController {
    
    var clicks = 0
    lazy var button: UIButton = {
        var button: UIButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton;
        button.frame = CGRectMake(100, 100, 100, 50)
        button.backgroundColor = Constants.Colors.colorThemeDarkGray
        button.setTitle("Test Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction", forControlEvents: UIControlEvents.TouchUpInside)
        
        return button;
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(button)
    }
    
    func buttonAction() {
        clicks++
        println(clicks)
    }


}

