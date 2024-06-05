// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public enum Animation {
    case appearance
    case disappearance
    case shakeHorizontal
    case shakeVertical
    case pulse
    case explode
}

public struct Animatrix {
    public static func startAnimationIn(view: UIView, animation: Animation, duration: Double? = nil) {
        switch animation {

        case .appearance:
            appearance(view: view, duration: duration ?? 2)
        case .disappearance:
            disappearance(view: view, duration: duration ?? 2)
        case .shakeHorizontal:
            shakeHorizontal(view: view, duration: duration ?? 2)
        case .shakeVertical:
            shakeVertical(view: view, duration: duration ?? 2)
        case .pulse:
            pulse(view: view)
        case .explode:
            explode(view: view)
        }
    }
}

private func appearance(view: UIView, duration: Double) {
    view.alpha = 0
    UIView.animate(withDuration: duration) {
        view.alpha = 1
    }
}

private func disappearance(view: UIView, duration: Double) {
    view.alpha = 1
    UIView.animate(withDuration: duration) {
        view.alpha = 0
    }
}

private func shakeHorizontal(view: UIView, duration: Double) {
      let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
      animation.timingFunction = CAMediaTimingFunction(name: .linear)
      animation.values = [-30, 30, -20, 20, -10, 10, -5, 5, -3, 3, 0]
      animation.duration = 0.6
      
      view.layer.add(animation, forKey: "shake")
  }

private func shakeVertical(view: UIView, duration: Double) {
      let animation = CAKeyframeAnimation(keyPath: "transform.translation.y")
      animation.timingFunction = CAMediaTimingFunction(name: .linear)
      animation.values = [-30, 30, -20, 20, -10, 10, -5, 5, -3, 3, 0]
      animation.duration = 0.6
      
      view.layer.add(animation, forKey: "shake")
  }

private func pulse(view: UIView) {
        let pulseAnimation = CABasicAnimation(keyPath: "transform.scale")
        pulseAnimation.duration = 1
        pulseAnimation.fromValue = 1.0
        pulseAnimation.toValue = 1.2
        pulseAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        pulseAnimation.autoreverses = true
        pulseAnimation.repeatCount = Float.infinity
        
        view.layer.add(pulseAnimation, forKey: "pulse")
 }

private func explode(view: UIView) {
       UIView.animate(withDuration: 0.2, animations: {
           view.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
           view.alpha = 0.0
       }, completion: { _ in
           view.transform = CGAffineTransform.identity
           view.alpha = 1.0
       })
   }

