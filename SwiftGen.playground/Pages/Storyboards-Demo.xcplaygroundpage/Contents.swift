//: ### Demo for `swiftgen storyboards`

class CreateViewController: UIViewController {
    // Stringly typed
    let storyboard1 = UIStoryboard(name: "PlaygroundStoryboard", bundle: nil)
    // Strongly typed
    let storyboard2 = UIStoryboard(name: .playgroundStoryboard)
}

//: ### Example of code generated by swiftgen-storyboard UIStoryboards+Extensions.stencil

import UIKit

enum Storyboard : String {
    case playgroundStoryboard = "PlaygroundStoryboard"
}

extension UIStoryboard {
    convenience init(name: Storyboard, bundle: Bundle? = nil) {
        self.init(name: name.rawValue, bundle: bundle)
    }
}
