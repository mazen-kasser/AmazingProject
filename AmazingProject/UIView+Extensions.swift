//
//  Created by Mazen Kasser on 29/11/2016.
//

import Foundation
import UIKit

/// Helpers to extract a UIView from a Nib file
public extension UIView {

    /// instantiates a view from a nib where the nib name is the same as the custom view class name
    /// returns a strongly typed object of the correct type
    class func instantiateFromNib() -> Self {
        return instantiateFromNib(name: String(describing: self), owner: nil)
    }

    private class func instantiateFromNib<T: UIView>(name: String, owner: AnyObject?) -> T {
        guard let view = Bundle.main.loadNibNamed(name, owner: owner, options: nil)!.first as? T else {
            fatalError("Couldn’t instantiate view with name \(name) ")
        }
        return view
    }
}
