//
//  UIAppleColorWrapper.swift
//  UIAppleColor
//
//  Created by Kofktu on 2019/10/13.
//  Copyright © 2019 Kofktu. All rights reserved.
//

import Foundation
import UIKit

fileprivate extension UIAppleColor.Mode {
    
    func value(light lightColor: UIColor,
               dark darkColor: UIColor) -> UIColor {
        switch self {
        case .light:
            return lightColor
        case .dark:
            return darkColor
        }
    }
    
    func value(`default` color: UIColor,
               light lightColor: UIColor,
               dark darkColor: UIColor) -> UIColor {
        if #available(iOS 13.0, *) {
            return color
        }
        
        return value(light: lightColor,
                     dark: darkColor)
    }
    
}

public final class UIAppleColorWrapper<Base> {
    
    let base: Base
    let mode: UIAppleColor.Mode
    
    init(_ base: Base, mode: UIAppleColor.Mode) {
        self.base = base
        self.mode = mode
    }
    
}

// System Backgrounds
public extension UIAppleColorWrapper where Base: UIAppleColor {
    
    var systemBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .systemBackground
        }
        
        return mode.value(light: .white,
                          dark: .black)
    }
    
    var secondarySystemBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .secondarySystemBackground
        }
        
        return mode.value(light: UIColor(hex6: 0xEFEFF4),
                          dark: UIColor(hex6: 0x1C1C1E))
    }
    
    var tertiarySystemBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiarySystemBackground
        }
        
        return mode.value(light: .white,
                          dark: UIColor(hex6: 0x2C2C2E))
    }
    
}

// System Grouped Backgrounds
public extension UIAppleColorWrapper where Base: UIAppleColor {
    
    var systemGroupedBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGroupedBackground
        }
        
        return mode.value(light: UIColor(hex6: 0xEFEFF4),
                          dark: .black)
    }
    
    var secondarySystemGroupedBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .secondarySystemGroupedBackground
        }
        
        return mode.value(light: .white,
                          dark: UIColor(hex6: 0x1C1C1E))
    }
    
    var tertiarySystemGroupedBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiarySystemGroupedBackground
        }
        
        return mode.value(light: UIColor(hex6: 0xEFEFF4),
                          dark: UIColor(hex6: 0x2C2C2E))
    }
    
}

// Fill Colors
public extension UIAppleColorWrapper where Base: UIAppleColor {
    
    var systemFill: UIColor {
        if #available(iOS 13.0, *) {
            return .systemFill
        }
        
        return mode.value(light: UIColor(hex6: 0x787880, alpha: 0.2),
                          dark: UIColor(hex6: 0x787880, alpha: 0.36))
    }
    
    var secondarySystemFill: UIColor {
        if #available(iOS 13.0, *) {
            return .secondarySystemFill
        }
        
        return mode.value(light: UIColor(hex6: 0x787880, alpha: 0.16),
                          dark: UIColor(hex6: 0x787880, alpha: 0.32))
    }
    
    var tertiarySystemFill: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiarySystemFill
        }
        
        return mode.value(light: UIColor(hex6: 0x767680, alpha: 0.12),
                          dark: UIColor(hex6: 0x767680, alpha: 0.24))
    }
    
    var quaternarySystemFill: UIColor {
        if #available(iOS 13.0, *) {
            return .quaternarySystemFill
        }
        
        return mode.value(light: UIColor(hex6: 0x747480, alpha: 0.08),
                          dark: UIColor(hex6: 0x747480, alpha: 0.18))
    }
    
}

// Label
public extension UIAppleColorWrapper where Base: UIAppleColor {
    
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
        
        return mode.value(light: .black,
                          dark: .white)
    }
    
    var secondaryLabel: UIColor {
        if #available(iOS 13.0, *) {
            return .secondaryLabel
        }
        
        return mode.value(light: UIColor(hex6: 0x3C3C43, alpha: 0.6),
                          dark: UIColor(hex6: 0xEBEBF5, alpha: 0.6))
    }
    
    var tertiaryLabel: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiaryLabel
        }
        
        return mode.value(light: UIColor(hex6: 0x3C3C43, alpha: 0.3),
                          dark: UIColor(hex6: 0xEBEBF5, alpha: 0.3))
    }
    
    var quaternaryLabel: UIColor {
        if #available(iOS 13.0, *) {
            return .quaternaryLabel
        }
        
        return mode.value(light: UIColor(hex6: 0x3C3C43, alpha: 0.18),
                          dark: UIColor(hex6: 0xEBEBF5, alpha: 0.18))
    }
    
}

public extension UIAppleColorWrapper where Base: UIAppleColor {
    
    var link: UIColor {
        if #available(iOS 13.0, *) {
            return .link
        }
        
        return mode.value(light: UIColor(hex6: 0x007AFF),
                          dark: UIColor(hex6: 0x0984FF))
    }
    
    
    var placeholderText: UIColor {
        if #available(iOS 13.0, *) {
            return .placeholderText
        }
        
        return mode.value(light: UIColor(hex6: 0x3C3C43, alpha: 0.3),
                          dark: UIColor(hex6: 0xEBEBF5, alpha: 0.3))
    }
    
    var separator: UIColor {
        if #available(iOS 13.0, *) {
            return .separator
        }
        
        return mode.value(light: UIColor(hex6: 0x3C3C43, alpha: 0.29),
                          dark: UIColor(hex6: 0x545458, alpha: 0.65))
    }
    
    var opaqueSeparator: UIColor {
        if #available(iOS 13.0, *) {
            return .opaqueSeparator
        }
        
        return mode.value(light: UIColor(hex6: 0xC6C6C8),
                          dark: UIColor(hex6: 0x38383A))
    }
    
}

// System Color
public extension UIAppleColorWrapper where Base: UIAppleColor {
    
    var systemRed: UIColor {
        mode.value(default: .systemRed,
                   light: UIColor(hex6: 0xFF3B30),
                   dark: UIColor(hex6: 0xFF453A))
    }
    
    var systemGreen: UIColor {
        mode.value(default: .systemGreen,
                   light: UIColor(hex6: 0x34C759),
                   dark: UIColor(hex6: 0x32D74B))
    }
    
    var systemBlue: UIColor {
        mode.value(default: .systemBlue,
                   light: UIColor(hex6: 0x007AFF),
                   dark: UIColor(hex6: 0x0A84FF))
    }
    
    var systemOrange: UIColor {
        mode.value(default: .systemOrange,
                   light: UIColor(hex6: 0x007AFF),
                   dark: UIColor(hex6: 0x0A84FF))
    }
    
    var systemYellow: UIColor {
        mode.value(default: .systemYellow,
                   light: UIColor(hex6: 0xFFCC00),
                   dark: UIColor(hex6: 0xFFD60A))
    }
    
    var systemPink: UIColor {
        mode.value(default: .systemPink,
                   light: UIColor(hex6: 0xFF2D55),
                   dark: UIColor(hex6: 0xFF375F))
    }
    
    var systemPurple: UIColor {
        mode.value(default: .systemPurple,
                   light: UIColor(hex6: 0xAF52DE),
                   dark: UIColor(hex6: 0xBF5AF2))
    }
    
    var systemTeal: UIColor {
        mode.value(default: .systemTeal,
                   light: UIColor(hex6: 0x5AC8FA),
                   dark: UIColor(hex6: 0x64D2FF))
    }
    
    var systemIndigo: UIColor {
        if #available(iOS 13.0, *) {
            return .systemIndigo
        }
        
        return mode.value(light: UIColor(hex6: 0x5856D6),
                          dark: UIColor(hex6: 0x5E5CE6))
    }
    
    
    var systemGray: UIColor {
        mode.value(default: .systemGray,
                   light: UIColor(hex6: 0x8E8E93),
                   dark: UIColor(hex6: 0x8E8E93))
    }
    
    
    var systemGray2: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray2
        }
        
        return mode.value(light: UIColor(hex6: 0xAEAEB2),
                          dark: UIColor(hex6: 0x636366))
    }
    
    var systemGray3: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray3
        }
        
        return mode.value(light: UIColor(hex6: 0xC7C7CC),
                          dark: UIColor(hex6: 0x48484A))
    }
    
    var systemGray4: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray4
        }
        
        return mode.value(light: UIColor(hex6: 0xD1D1D6),
                          dark: UIColor(hex6: 0x3A3A3C))
    }
    
    var systemGray5: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray5
        }
        
        return mode.value(light: UIColor(hex6: 0xE5E5EA),
                          dark: UIColor(hex6: 0x2C2C2E))
    }
    
    var systemGray6: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray6
        }
        
        return mode.value(light: UIColor(hex6: 0xF2F2F7),
                          dark: UIColor(hex6: 0x1C1C1E))
    }
    
}
