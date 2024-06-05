// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

import UIKit

public enum Animation {
    case appearance
    case disappearance
    case shakeHorizontal
    case shakeVertical
    case pulse
    case explode
    case complexAnimation
    case advancedAnimation // Новая анимация
}

public struct Animatrix {
    public static func startAnimationIn(view: UIView, animation: Animation, duration: Double? = nil) {
        switch animation {
        case .appearance:
            appearance(view: view, duration: duration ?? 2)
        case .disappearance:
            disappearance(view: view, duration: duration ?? 2)
        case .shakeHorizontal:
            shake(view: view, direction: "x", duration: duration ?? 0.6)
        case .shakeVertical:
            shake(view: view, direction: "y", duration: duration ?? 0.6)
        case .pulse:
            pulse(view: view)
        case .explode:
            explode(view: view)
        case .complexAnimation:
            complexAnimation(view: view)
        case .advancedAnimation:
            advancedAnimation(view: view)
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

private func shake(view: UIView, direction: String, duration: Double) {
    let animation = CAKeyframeAnimation(keyPath: "transform.translation.\(direction)")
    animation.timingFunction = CAMediaTimingFunction(name: .linear)
    animation.values = [-30, 30, -20, 20, -10, 10, -5, 5, -3, 3, 0]
    animation.duration = duration
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

private func complexAnimation(view: UIView) {
    // Создание анимации масштаба
    let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
    scaleAnimation.fromValue = 1.0
    scaleAnimation.toValue = 1.5
    scaleAnimation.duration = 1.0
    scaleAnimation.autoreverses = true
    scaleAnimation.repeatCount = Float.infinity
    
    // Создание анимации вращения
    let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
    rotationAnimation.fromValue = 0
    rotationAnimation.toValue = Double.pi * 2
    rotationAnimation.duration = 2.0
    rotationAnimation.repeatCount = Float.infinity

    // Создание анимации прозрачности
    let opacityAnimation = CABasicAnimation(keyPath: "opacity")
    opacityAnimation.fromValue = 1.0
    opacityAnimation.toValue = 0.5
    opacityAnimation.duration = 1.0
    opacityAnimation.autoreverses = true
    opacityAnimation.repeatCount = Float.infinity
    
    // Добавление всех анимаций к слою testView
    view.layer.add(scaleAnimation, forKey: "scale")
    view.layer.add(rotationAnimation, forKey: "rotation")
    view.layer.add(opacityAnimation, forKey: "opacity")
}

private func advancedAnimation(view: UIView) {
    // Создание анимации масштаба
    let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
    scaleAnimation.fromValue = 1.0
    scaleAnimation.toValue = 2.0
    scaleAnimation.duration = 0.5
    scaleAnimation.autoreverses = true

    // Создание анимации вращения
    let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
    rotationAnimation.fromValue = 0
    rotationAnimation.toValue = Double.pi * 4
    rotationAnimation.duration = 1.0

    // Создание анимации прозрачности
    let opacityAnimation = CABasicAnimation(keyPath: "opacity")
    opacityAnimation.fromValue = 1.0
    opacityAnimation.toValue = 0.0
    opacityAnimation.duration = 1.0

    // Создание анимации перемещения по кривой траектории
    let positionAnimation = CAKeyframeAnimation(keyPath: "position")
    let path = UIBezierPath()
    path.move(to: view.center)
    path.addCurve(to: CGPoint(x: view.center.x + 200, y: view.center.y + 200),
                  controlPoint1: CGPoint(x: view.center.x + 100, y: view.center.y - 100),
                  controlPoint2: CGPoint(x: view.center.x + 300, y: view.center.y + 100))
    positionAnimation.path = path.cgPath
    positionAnimation.duration = 1.0

    // Группировка всех анимаций
    let groupAnimation = CAAnimationGroup()
    groupAnimation.animations = [scaleAnimation, rotationAnimation, opacityAnimation, positionAnimation]
    groupAnimation.duration = 1.0
    groupAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
    
    view.layer.add(groupAnimation, forKey: "advancedAnimation")
}
