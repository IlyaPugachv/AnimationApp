import UIKit

extension UIButton {
    
    func pulsate() {
        let pulsate = CASpringAnimation(keyPath: "transform.scale")
        pulsate.duration = 0.6
        pulsate.fromValue = 0.8
        pulsate.toValue = 1.2
        pulsate.autoreverses = true
        pulsate.initialVelocity = 0.5
        pulsate.damping = 1
        layer.add(pulsate, forKey: nil)
    }
}
