//
//  RGBConverter.swift
//  MightySwift
//
//  Created by Rodel Medina on 4/13/15.
//  Copyright (c) 2015 Rodel Medina. All rights reserved.
//

import Foundation
import UIKit

class RGBConverter {
    class func rgba(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
    class func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return rgba(red, green: green, blue: blue, alpha: 1)
    }
}