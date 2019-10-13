//
//  UIColor+Extension.swift
//  UIAppleColor
//
//  Created by Kofktu on 2019/10/13.
//  Copyright © 2019 Kofktu. All rights reserved.
//

import Foundation
import UIKit

internal extension UIColor {
    
    convenience init(hex6: UInt32, alpha: CGFloat = 1) {
        let divisor = CGFloat(255)
        let red     = CGFloat((hex6 & 0xFF0000) >> 16) / divisor
        let green   = CGFloat((hex6 & 0x00FF00) >>  8) / divisor
        let blue    = CGFloat( hex6 & 0x0000FF       ) / divisor
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
}
