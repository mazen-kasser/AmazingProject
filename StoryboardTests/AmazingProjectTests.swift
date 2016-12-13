//
//  Created by Mazen Kasser on 29/11/2016.
//

import XCTest

@testable import AmazingProject

class AmazingProjectTests: XCTestCase {

    enum Storyboard: String, StoryboardConvertible {
        case amazingStoryboard = "AmazingStoryboard"
    }

    func testValidStoryboard() {
        let storyboard = Storyboard.amazingStoryboard.storyboard
        XCTAssertNotNil(storyboard, "Storyboard shouldn't be nil")
    }

    func testValidViewControllerFromStoryboard() {
        let storyboard = UIStoryboard(name: .amazingStoryboard)
        let controller = AmazingViewController.instantiate(from: storyboard)
        XCTAssertNotNil(controller, "Couldn’t instantiate view controller with identifier \(String(describing: AmazingViewController.self))")
    }

    func testValidViewFromNib() {
        let view = AmazingView.instantiateFromNib()
        XCTAssertNotNil(view, "Couldn’t instantiate view with name \(String(describing: AmazingView.self))")
    }

}
