# UIAppleColor

[![Build Status](https://travis-ci.org/Kofktu/Sniffer.svg?branch=master)](https://travis-ci.org/Kofktu/UIAppleColor)
![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
[![CocoaPods](http://img.shields.io/cocoapods/v/UIAppleColor.svg?style=flat)](http://cocoapods.org/?q=name%3ASniffer%20author%3AKofktu)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

- Apple System Color
- Versions below iOS 13 use the Light/Dark Mode Color

## Example

```swift
let label = UILabel()

if #available(iOS 13.0, *) {
	label.textColor = .label
} else {
	label.textColor = .black
}

// Use UIAppleColor
label.textColor = UIColor.apple.label
```

```swift
public extension UIColor {
    static let apple: UIAppleColor
}

public struct UIAppleColor {
    var systemBackground: UIColor
    var secondarySystemBackground: UIColor
    var tertiarySystemBackground: UIColor

    var systemGroupedBackground: UIColor
    var secondarySystemGroupedBackground: UIColor
    var tertiarySystemGroupedBackground: UIColor

    var systemFill: UIColor
    var secondarySystemFill: UIColor
    var tertiarySystemFill: UIColor
    var quaternarySystemFill: UIColor

    var lightText: UIColor
    var darkText: UIColor
    var label: UIColor
    var secondaryLabel: UIColor
    var tertiaryLabel: UIColor
    var quaternaryLabel: UIColor

    var link: UIColor
    var placeholderText: UIColor
    var separator: UIColor
    var opaqueSeparator: UIColor

    var systemRed: UIColor
    var systemGreen: UIColor
    var systemBlue: UIColor
    var systemOrange: UIColor
    var systemYellow: UIColor
    var systemPink: UIColor
    var systemPurple: UIColor
    var systemTeal: UIColor
    var systemIndigo: UIColor
    var systemGray: UIColor
    var systemGray2: UIColor
    var systemGray3: UIColor
    var systemGray4: UIColor
    var systemGray5: UIColor
    var systemGray6: UIColor
}
```

#### When using dark mode below iOS 13


```swift
// once in the first time
UIAppleColor.setup(mode: .dark)

let label = UILabel()
label.textColor = UIColor.apple.label
```

```swift
let label = UILabel()
label.textColor = UIColor.apple.mode(.dark).label
```

## Installation

#### CocoaPods
UIAppleColor is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UIAppleColor"
```

#### Carthage
For iOS 8+ projects with [Carthage](https://github.com/Carthage/Carthage)

```
github "Kofktu/UIAppleColor"
```

## References
- Apple HIG Color (https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/)

## Authors

Taeun Kim (kofktu), <kofktu@gmail.com>

## License

Sniffer is available under the ```MIT``` license. See the ```LICENSE``` file for more info.
