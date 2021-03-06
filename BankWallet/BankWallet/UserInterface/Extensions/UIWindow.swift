import UIKit

extension UIWindow {

    func set(newRootController: UIViewController) {
        rootViewController?.dismiss(animated: false)

        let transition = CATransition()
        transition.type = kCATransitionFade

        transition.duration = 0.3
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)

        layer.add(transition, forKey: kCATransition)

        rootViewController = newRootController
        makeKeyAndVisible()
    }

}
