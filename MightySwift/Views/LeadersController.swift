//
//  LeadersController.swift
//  MightySwift
//
//  Created by Rodel Medina on 4/9/15.
//  Copyright (c) 2015 Rodel Medina. All rights reserved.
//

import UIKit

class LeadersController: TemplateController {
    
    lazy var button: UIButton = {
        var button: UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton;
        button.frame = CGRectMake(100, 100, 100, 50)
        button.backgroundColor = UIColor.blueColor()
        button.setTitle("Test Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        
        return button;
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(button)
    }
}

