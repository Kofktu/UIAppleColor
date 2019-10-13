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

public final class UIAppleColor {
    
    fileprivate static var mode: UIAppleColor.Mode = .light
    
    public enum Mode {
        case light
        case dark
    }
    
    /// Versions below iOS 13 default Mode
    /// - Parameter mode: Light/Dark Mode (below iOS 13)
    static public func setup(mode: UIAppleColor.Mode) {
        self.mode = mode
    }
    
    
    /// Versions below iOS 13 Mode
    /// iOS13 and above, color values based on system theme
    /// - Parameter mode: Light/Dark Mode (below iOS 13)
    public func mode(_ mode: UIAppleColor.Mode) -> UIAppleColorWrapper<UIAppleColor> {
        UIAppleColorWrapper<UIAppleColor>(self, mode: mode)
    }
    
}

// System Backgrounds
public extension UIAppleColor {
    
    var systemBackground: UIColor {
        mode(UIAppleColor.mode).systemBackground
    }
    
    var secondarySystemBackground: UIColor {
        mode(UIAppleColor.mode).secondarySystemBackground
    }
    
    var tertiarySystemBackground: UIColor {
        mode(UIAppleColor.mode).tertiarySystemBackground
    }
    
}

// System Grouped Backgrounds
public extension UIAppleColor {
    
    var systemGroupedBackground: UIColor {
        mode(UIAppleColor.mode).systemGroupedBackground
    }
    
    var secondarySystemGroupedBackground: UIColor {
        mode(UIAppleColor.mode).secondarySystemGroupedBackground
    }
    
    var tertiarySystemGroupedBackground: UIColor {
        mode(UIAppleColor.mode).tertiarySystemGroupedBackground
    }
    
}

// Fill Colors
public extension UIAppleColor {
    
    var systemFill: UIColor {
        mode(UIAppleColor.mode).systemFill
    }
    
    var secondarySystemFill: UIColor {
        mode(UIAppleColor.mode).secondarySystemFill
    }
    
    var tertiarySystemFill: UIColor {
        mode(UIAppleColor.mode).tertiarySystemFill
    }

    var quaternarySystemFill: UIColor {
        mode(UIAppleColor.mode).quaternarySystemFill
    }
    
}

// Label
public extension UIAppleColor {
    
    var lightText: UIColor {
        mode(UIAppleColor.mode).lightText
    }

    var darkText: UIColor {
        mode(UIAppleColor.mode).darkText
    }
    
    var label: UIColor {
        mode(UIAppleColor.mode).label
    }
    
    var secondaryLabel: UIColor {
        mode(UIAppleColor.mode).secondaryLabel
    }
    
    var tertiaryLabel: UIColor {
        mode(UIAppleColor.mode).tertiaryLabel
    }
    
    var quaternaryLabel: UIColor {
        mode(UIAppleColor.mode).quaternaryLabel
    }
    
}

public extension UIAppleColor {
    
    var link: UIColor {
        mode(UIAppleColor.mode).link
    }

    
    var placeholderText: UIColor {
        mode(UIAppleColor.mode).placeholderText
    }

    var separator: UIColor {
        mode(UIAppleColor.mode).separator
    }

    var opaqueSeparator: UIColor {
        mode(UIAppleColor.mode).opaqueSeparator
    }
    
}

// System Color
public extension UIAppleColor {
    
    var systemRed: UIColor {
        mode(UIAppleColor.mode).systemRed
    }

    var systemGreen: UIColor {
        mode(UIAppleColor.mode).systemGreen
    }

    var systemBlue: UIColor {
        mode(UIAppleColor.mode).systemBlue
    }

    var systemOrange: UIColor {
        mode(UIAppleColor.mode).systemOrange
    }

    var systemYellow: UIColor {
        mode(UIAppleColor.mode).systemYellow
    }

    var systemPink: UIColor {
        mode(UIAppleColor.mode).systemPink
    }

    var systemPurple: UIColor {
        mode(UIAppleColor.mode).systemPurple
    }

    var systemTeal: UIColor {
        mode(UIAppleColor.mode).systemTeal
    }

    var systemIndigo: UIColor {
        mode(UIAppleColor.mode).systemIndigo
    }
    
    var systemGray: UIColor {
        mode(UIAppleColor.mode).systemGray
    }
    
    var systemGray2: UIColor {
        mode(UIAppleColor.mode).systemGray2
    }

    var systemGray3: UIColor {
        mode(UIAppleColor.mode).systemGray3
    }

    var systemGray4: UIColor {
        mode(UIAppleColor.mode).systemGray4
    }

    var systemGray5: UIColor {
        mode(UIAppleColor.mode).systemGray5
    }

    var systemGray6: UIColor {
        mode(UIAppleColor.mode).systemGray6
    }
    
}
