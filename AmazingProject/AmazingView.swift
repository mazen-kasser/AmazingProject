//
//  Created by Mazen Kasser on 29/11/2016.
//

import UIKit

protocol AmazingViewDelegate {
    func didTapCloseButton()
}

class AmazingView: UIView {

    var delegate: AmazingViewDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func closeButtonTapped(_ sender: Any) {
        delegate?.didTapCloseButton()
    }

}
