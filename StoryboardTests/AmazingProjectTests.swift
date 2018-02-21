
import XCTest

@testable import AmazingProject

class AmazingProjectTests: XCTestCase {

    enum Storyboard: String {
        case amazingStoryboard = "AmazingStoryboard"
    }

    func testValidViewControllerFromStoryboard() {
        let storyboard = UIStoryboard(name: .amazingStoryboard)
        let controller = AmazingViewController.instantiate(from: storyboard)
        XCTAssertNotNil(controller, "Couldn’t instantiate view controller with identifier \(String(describing: AmazingViewController.self))")
    }

}
