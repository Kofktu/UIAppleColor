//
//  UIColor+Apple.swift
//  UIAppleColor
//
//  Created by Kofktu on 2019/10/13.
//  Copyright © 2019 Kofktu. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    
    static let apple: UIAppleColor = UIAppleColor()
    
}

fileprivate extension UIColor {
    
    convenience init(hex6: UInt32, alpha: CGFloat = 1) {
        let divisor = CGFloat(255)
        let red     = CGFloat((hex6 & 0xFF0000) >> 16) / divisor
        let green   = CGFloat((hex6 & 0x00FF00) >>  8) / divisor
        let blue    = CGFloat( hex6 & 0x0000FF       ) / divisor
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
}

public struct UIAppleColor {}

// System Backgrounds
public extension UIAppleColor {
    
    var systemBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .systemBackground
        }
        
        return .white
    }
    
    var secondarySystemBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .secondarySystemBackground
        }
        
        return UIColor(hex6: 0xEFEFF4)
    }
    
    var tertiarySystemBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiarySystemBackground
        }
        
        return .white
    }
    
}

// System Grouped Backgrounds
public extension UIAppleColor {
    
    var systemGroupedBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGroupedBackground
        }
        
        return UIColor(hex6: 0xEFEFF4)
    }
    
    var secondarySystemGroupedBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .secondarySystemGroupedBackground
        }
        
        return .white
    }
    
    var tertiarySystemGroupedBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiarySystemGroupedBackground
        }
        
        return UIColor(hex6: 0xEFEFF4)
    }
    
}

// Fill Colors
public extension UIAppleColor {
    
    var systemFill: UIColor {
        if #available(iOS 13.0, *) {
            return .systemFill
        }
        
        return UIColor(hex6: 0x787880, alpha: 0.2)
    }
    
    var secondarySystemFill: UIColor {
        if #available(iOS 13.0, *) {
            return .secondarySystemFill
        }
        
        return UIColor(hex6: 0x787880, alpha: 0.16)
    }
    
    var tertiarySystemFill: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiarySystemFill
        }
        
        return UIColor(hex6: 0x767680, alpha: 0.12)
    }

    var quaternarySystemFill: UIColor {
        if #available(iOS 13.0, *) {
            return .quaternarySystemFill
        }
        
        return UIColor(hex6: 0x747480, alpha: 0.08)
    }
    
}

// Label
public extension UIAppleColor {
    
    var lightText: UIColor {
        if #available(iOS 13.0, *) {
            return .lightText
        }
        
        return UIColor.white.withAlphaComponent(0.6)
    }

    var darkText: UIColor {
        if #available(iOS 13.0, *) {
            return .darkText
        }
        
        return .black
    }
    
    var label: UIColor {
        if #available(iOS 13.0, *) {
            return .label
        }
        
        return .black
    }
    
    var secondaryLabel: UIColor {
        if #available(iOS 13.0, *) {
            return .secondaryLabel
        }
        
        return UIColor(hex6: 0x3C3C43, alpha: 0.6)
    }
    
    var tertiaryLabel: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiaryLabel
        }
        
        return UIColor(hex6: 0x3C3C43, alpha: 0.3)
    }
    
    var quaternaryLabel: UIColor {
        if #available(iOS 13.0, *) {
            return .quaternaryLabel
        }
        
        return UIColor(hex6: 0x3C3C43, alpha: 0.18)
    }
    
}

public extension UIAppleColor {
    
    var link: UIColor {
        if #available(iOS 13.0, *) {
            return .link
        }
        
        return UIColor(hex6: 0x007AFF, alpha: 0.18)
    }

    
    var placeholderText: UIColor {
        if #available(iOS 13.0, *) {
            return .placeholderText
        }
        
        return UIColor(hex6: 0x3C3C43, alpha: 0.3)
    }

    var separator: UIColor {
        if #available(iOS 13.0, *) {
            return .separator
        }
        
        return UIColor(hex6: 0x3C3C43, alpha: 0.29)
    }

    var opaqueSeparator: UIColor {
        if #available(iOS 13.0, *) {
            return .opaqueSeparator
        }
        
        return UIColor(hex6: 0xC6C6C8)
    }
    
}

// System Color
public extension UIAppleColor {
    
    var systemRed: UIColor {
        .systemRed
    }

    var systemGreen: UIColor {
        .systemGreen
    }

    var systemBlue: UIColor {
        .systemBlue
    }

    var systemOrange: UIColor {
        .systemOrange
    }

    var systemYellow: UIColor {
        .systemYellow
    }

    var systemPink: UIColor {
        .systemPink
    }

    var systemPurple: UIColor {
        .systemPurple
    }

    var systemTeal: UIColor {
        .systemTeal
    }

    var systemIndigo: UIColor {
        if #available(iOS 13.0, *) {
            return .systemIndigo
        }
        
        return UIColor(hex6: 0x5856D6)
    }

    
    var systemGray: UIColor {
        .systemGray
    }

    
    var systemGray2: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray2
        }
        
        return UIColor(hex6: 0xAEAEB2)
    }

    var systemGray3: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray3
        }
        
        return UIColor(hex6: 0xC7C7CC)
    }

    var systemGray4: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray4
        }
        
        return UIColor(hex6: 0xD1D1D6)
    }

    var systemGray5: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray5
        }
        
        return UIColor(hex6: 0xE5E5EA)
    }

    var systemGray6: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray6
        }
        
        return UIColor(hex6: 0xF2F2F7)
    }
    
}
