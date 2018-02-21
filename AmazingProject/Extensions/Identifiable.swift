//
//  Created by Mazen Kasser on 23/07/2017.
//

import UIKit

// MARK: Identifier

protocol Identifiable {
    static var identifier: String { get }
}

extension Identifiable where Self: NSObject {
    static var identifier: String {
        return String(describing: self)
    }
}

// Global Conformance
extension UIViewController: Identifiable { }
