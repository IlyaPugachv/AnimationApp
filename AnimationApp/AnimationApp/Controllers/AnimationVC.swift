import UIKit


import Lottie

final class AnimationVC: UIViewController {
    
//    private var animations = Animation()
    
    @IBOutlet private weak var coreAnimationView: UIView!
    @IBOutlet private weak var stackView: UIStackView!
    
    @IBOutlet private weak var coreActionButton: UIButton!
    @IBOutlet private weak var lottieAnimationButton: UIButton!
    
    private var lottieAnimationView: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lottieAnimationViewSetup()
        
    }
    
    @IBAction func coreAnimationBtnAction(_ sender: UIButton) {
        sender.pulsate()
        setupCoreAnimationVeiw()
    }
    
    @IBAction func lottieAnimationBtnAction(_ sender: UIButton) {
        lottieAnimationView.play { _ in
            print("End lottieAnimationView")
        }
    }
    
    
    private func setupCoreAnimationVeiw() {
        UIView.animate(withDuration: 1, delay: 0, options: [.autoreverse]) { [weak self] in
            self?.coreAnimationView.frame.origin.x += 40
        }
    }
    
    private func lottieAnimationViewSetup() {
        
       
        lottieAnimationView = .init(name: "home")
//        lottieAnimationView.view = animations.animations.randomElement()
        
        lottieAnimationView.backgroundColor = .lightGray
        lottieAnimationView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        lottieAnimationView.contentMode = .scaleAspectFit
        lottieAnimationView.loopMode = .loop
        lottieAnimationView.animationSpeed = 0.5
        stackView.addArrangedSubview(lottieAnimationView)
    }
}
