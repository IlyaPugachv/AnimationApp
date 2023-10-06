import UIKit
import Lottie

final class AnimationVC: UIViewController {
    
    private var lottieAnimationView: LottieAnimationView!
    private let animations = Animations()
    private var active = true
    
    @IBOutlet private weak var coreAnimationView: UIView!
    @IBOutlet private weak var stackView: UIStackView!
    
    @IBOutlet private weak var coreActionButton: UIButton!
    @IBOutlet private weak var lottieAnimationButton: UIButton!
    
    @IBAction func coreAnimationBtnAction(_ sender: UIButton) {
        setupCoreAnimationVeiw()
        sender.pulsate()
    }
    
    @IBAction func lottieAnimationBtnAction(_ sender: Any) {
        switch active {
        case true:
            lottieAnimationViewSetup()
            lottieAnimationView.play()
        case false:
            lottieAnimationView.stop()
            lottieAnimationView.removeFromSuperview()
        }
        active.toggle()
    }
    
    
    private func setupCoreAnimationVeiw() {
        UIView.animate(withDuration: 1, delay: 0, options: [.autoreverse, .repeat]) { [weak self] in
            self?.coreAnimationView.frame.origin.x += 40
        }
    }
    
    private func lottieAnimationViewSetup() {
        lottieAnimationView = .init(name: animations.animationArray[Int.random(in: 0 ... animations.animationArray.count - 1)])
        lottieAnimationView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        lottieAnimationView.backgroundColor = .lightGray
        lottieAnimationView.contentMode = .scaleAspectFit
        lottieAnimationView.loopMode = .playOnce
        lottieAnimationView.animationSpeed = 0.5
        stackView.addArrangedSubview(lottieAnimationView)
    }
}
