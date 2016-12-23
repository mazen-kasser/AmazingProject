//
//  Created by Mazen Kasser on 29/11/2016.
//

import Foundation
import UIKit

class ViewController: UIViewController, AmazingViewDelegate {

    @IBAction func pushToStoryboardView(_ sender: Any) {

        let sb = UIStoryboard(name: "AmazingStoryboard", bundle: nil)
        let _ = sb.instantiateViewController(withIdentifier: "AmazingViewController") as? AmazingViewController

        let _ = UIStoryboard(name: .amazingStoryboard)
        let storyboard = Storyboard.amazingStoryboard.instance


        let viewController = AmazingViewController.instantiate(from: storyboard)

        navigationController?.pushViewController(viewController, animated: true)
    }

    @IBAction func addAmazingView(_ sender: Any) {

        // Stringly typed
        let _ = Bundle.main.loadNibNamed("AmazingView", owner: nil, options: nil)!.first as! AmazingView

        // Stronlgy typed
        let amazingView = AmazingView.instantiateFromNib()
        amazingView.delegate = self

        view.addSubview(amazingView)
    }

    internal func didTapCloseButton() {

    }
}

class AmazingViewController: UIViewController {}

