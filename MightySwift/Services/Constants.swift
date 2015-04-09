//
//  Constants.swift
//  MightySwift
//
//  Created by Rodel Medina on 4/10/15.
//  Copyright (c) 2015 Rodel Medina. All rights reserved.
//

import UIKit
import Foundation

// COLORS
class Colors {

    class func colorThemeOrange() -> UIColor {
        return RGBConverter.rgb(244, green: 115, blue: 61)
    }

    class func colorThemeGreen() -> UIColor {
        return RGBConverter.rgb(172, green: 203, blue: 18)
    }

    class func colorThemeRed() -> UIColor {
        return RGBConverter.rgb(221, green: 81, blue: 76)
    }

    class func colorThemeLightGray() -> UIColor {
        return RGBConverter.rgb(246, green: 247, blue: 248)
    }

    class func colorThemeDarkGray() -> UIColor {
        return RGBConverter.rgb(227, green: 228, blue: 229)
    }

    class func colorThemeNavigation() -> UIColor {
        return RGBConverter.rgb(244, green: 115, blue: 61)
    }

    class func colorThemeMainBG() -> UIColor {
        return RGBConverter.rgb(255, green: 255, blue: 255)
    }
}


// helpers
class RGBConverter {
    class func rgba(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
    class func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return rgba(red, green: green, blue: blue, alpha: 1)
    }
}
