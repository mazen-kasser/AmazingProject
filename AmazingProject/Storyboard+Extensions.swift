//
//  Created by Mazen Kasser on 29/11/2016.
//

import UIKit
import Foundation

/// StoryboardConvertible protocol
protocol StoryboardConvertible {

    /// UIStoryboard object
    var storyboard: UIStoryboard? { get }

    /// Bundle where to load the storyboard
    var bundle: Bundle? { get set }
}

/// StoryboardConvertible extension defining default values
extension StoryboardConvertible {

    /// Bundle default value is nil
    var bundle: Bundle? { return nil }
}

/// StoryboardConvertible extension providing Storyboard enum default implementation
extension StoryboardConvertible where Self: RawRepresentable, Self.RawValue == String {

    /// UIStoryboard object
    var storyboard: UIStoryboard? {
        return UIStoryboard(name: rawValue, bundle: bundle)
    }
}

// OR

extension UIStoryboard {

    enum Storyboard: String {
        case main = "Main"
        case amazingStoryboard = "AmazingStoryboard"
        // list all the storyboards...
    }

    convenience init(name: Storyboard, bundle: Bundle? = nil) {
        self.init(name: name.rawValue, bundle: bundle)
    }
}


