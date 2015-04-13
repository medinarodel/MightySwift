//
//  Constants.swift
//  MightySwift
//
//  Created by Rodel Medina on 4/10/15.
//  Copyright (c) 2015 Rodel Medina. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    
    struct Sizes {
        static let screenSize   = UIScreen.mainScreen().bounds
        static let windowHeight = UIScreen.mainScreen().bounds.height
        static let windowWidth  = UIScreen.mainScreen().bounds.width
        static let statusHeight = CGFloat(20)
        static let tabbarHeight = CGFloat(49)
        static let contentHeight = windowHeight - (statusHeight + tabbarHeight)

        static let homeThumb    = windowWidth / 3
    }
    
    // Constants.Colors.nameOfConstant
    struct Colors {
        static let colorThemeDarkGray   = RGBConverter.rgb(227, green: 228, blue: 229)
        static let colorThemeGreen      = RGBConverter.rgb(172, green: 203, blue: 18)
        static let colorThemeLightGray  = RGBConverter.rgb(246, green: 247, blue: 248)
        static let colorThemeMainBG     = RGBConverter.rgb(255, green: 255, blue: 255)
        static let colorThemeNavigation = RGBConverter.rgb(244, green: 115, blue: 61)
        static let colorThemeOrange     = RGBConverter.rgb(244, green: 115, blue: 61)
        static let colorThemeRed        = RGBConverter.rgb(221, green: 81, blue: 76)
    }

    // Constants.API.nameOfConstant
    struct API {
        static let  domain = "http://localhost:3000"
    }

}
