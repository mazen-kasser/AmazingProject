//
// Generated for SwiftGen, by Mazen Kasser
//

import UIKit

enum Storyboard : String {
    case amazingStoryboard = "AmazingStoryboard"
    case main = "Main"
    case designable = "Designable"

    var instance: UIStoryboard {
        return UIStoryboard(name: self)
    }
}

extension UIStoryboard {
  convenience init(name: Storyboard, bundle: Bundle? = nil) {
    self.init(name: name.rawValue, bundle: bundle)
  }
}
