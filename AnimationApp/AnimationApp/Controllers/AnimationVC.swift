import UIKit
import Lottie

final class AnimationVC: UIViewController {

    @IBOutlet private weak var coreAnimationView: UIView!
    @IBOutlet private weak var stackView: UIStackView!
    
    @IBOutlet private weak var coreActionButton: UIButton!
    @IBOutlet private weak var lottieAnimationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCoreAnimationVeiw()
    }

    @IBAction func coreAnimationBtnAction(_ sender: UIButton) {
        sender.pulsate()
    }
    
    private func setupCoreAnimationVeiw() {
        UIView.animate(withDuration: 1, delay: 0, options: [.autoreverse, .repeat]) { [weak self] in
            self?.coreAnimationView.frame.origin.x += 40
        }
    }
}
