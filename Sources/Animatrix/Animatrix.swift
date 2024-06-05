// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public enum Animation {
    case appearance
    case disappearance
    case shakeHorizontal
    case shakeVertical
}

public struct Animatrix {
    public static func startAnimationIn(view: UIView, animation: Animation, duration: Double) {
        switch animation {
            
        case .appearance:
           appearance(view: view, duration: duration)
        case .disappearance:
            disappearance(view: view, duration: duration)
        case .shakeHorizontal:
            shakeHorizontal(view: view, duration: duration)
        case .shakeVertical:
            shakeVertical(view: view, duration: duration)
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

