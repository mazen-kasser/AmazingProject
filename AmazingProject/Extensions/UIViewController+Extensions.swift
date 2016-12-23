//
//  Created by Mazen Kasser on 29/11/2016.
//

import Foundation
import UIKit

// MARK: - Extension

extension UIViewController {

    /// instantiates a view controller from within a storyboard where the nib name is the same as the custom view controller class name
    /// returns a strongly typed object of the correct type
    class func instantiate(from storyboard: UIStoryboard) -> Self {
        return instantiateFromStoryboard(from: storyboard)
    }

    private class func instantiateFromStoryboard<T: UIViewController>(from storyboard: UIStoryboard) -> T {

        guard let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
            fatalError("Couldn’t instantiate view controller with identifier \(identifier) ")
        }
        return viewController
    }
}

