//
//  TemplateController.swift
//  MightySwift
//
//  Created by Rodel Medina on 4/9/15.
//  Copyright (c) 2015 Rodel Medina. All rights reserved.
//

import UIKit

class TemplateController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = Constants.Colors.colorThemeMainBG

        self.navigationController!.navigationBar.translucent = false
        self.navigationController!.navigationBarHidden = false
        self.navigationController!.navigationBar.barTintColor = Constants.Colors.colorThemeNavigation
        self.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: Constants.Colors.colorThemeLightGray]
    }
}

