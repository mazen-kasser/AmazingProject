//
//  Created by Mazen Kasser on 29/11/2016.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func pushToStoryboardView(_ sender: Any) {

        let sb = UIStoryboard(name: "AmazingStoryboard", bundle: nil)
        let _ = sb.instantiateViewController(withIdentifier: "AmazingViewController") as? AmazingViewController

        let storyboard = UIStoryboard(name: .amazingStoryboard)

        let viewController = AmazingViewController.instantiate(from: storyboard)

        navigationController?.pushViewController(viewController, animated: true)
    }
}

class AmazingViewController: UIViewController {}

