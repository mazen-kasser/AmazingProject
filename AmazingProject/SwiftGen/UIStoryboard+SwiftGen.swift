//  *** DO NOT MODIFY THE AUTO-GENERATED FILE i.e UIStoryboard+SwiftGen.swift ***

import UIKit

enum Storyboard: String {
    case amazingStoryboard = "AmazingStoryboard"
    case `default` = "Default"
    case main = "Main"
}

extension UIStoryboard {
    convenience init(name: Storyboard, bundle: Bundle? = nil) {
        self.init(name: name.rawValue, bundle: bundle)
    }
}

