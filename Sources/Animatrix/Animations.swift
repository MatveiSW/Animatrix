//
//  File.swift
//  
//
//  Created by Матвей Авдеев on 05.06.2024.
//

import UIKit

/// Makes the view appear by fading in.
func appearance(view: UIView, duration: Double) {
    view.alpha = 0
    UIView.animate(withDuration: duration) {
        view.alpha = 1
    }
}

/// Makes the view disappear by fading out.
func disappearance(view: UIView, duration: Double) {
    view.alpha = 1
    UIView.animate(withDuration: duration) {
        view.alpha = 0
    }
}

/// Makes the view shake in a specified direction.
func shake(view: UIView, direction: String, duration: Double) {
    let animation = CAKeyframeAnimation(keyPath: "transform.translation.\(direction)")
    animation.timingFunction = CAMediaTimingFunction(name: .linear)
    animation.values = [-30, 30, -20, 20, -10, 10, -5, 5, -3, 3, 0]
    animation.duration = duration
    view.layer.add(animation, forKey: "shake")
}

/// Makes the view pulse.
func pulse(view: UIView) {
    let pulseAnimation = CABasicAnimation(keyPath: "transform.scale")
    pulseAnimation.duration = 1
    pulseAnimation.fromValue = 1.0
    pulseAnimation.toValue = 1.2
    pulseAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
    pulseAnimation.autoreverses = true
    pulseAnimation.repeatCount = Float.infinity
    view.layer.add(pulseAnimation, forKey: "pulse")
}

/// Makes the view explode.
func explode(view: UIView) {
    UIView.animate(withDuration: 0.2, animations: {
        view.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        view.alpha = 0.0
    }, completion: { _ in
        view.transform = CGAffineTransform.identity
        view.alpha = 1.0
    })
}

/// A complex animation combining scale, rotation, and opacity changes.
func complexAnimation(view: UIView) {
    let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
    scaleAnimation.fromValue = 1.0
    scaleAnimation.toValue = 1.5
    scaleAnimation.duration = 1.0
    scaleAnimation.autoreverses = true
    scaleAnimation.repeatCount = Float.infinity
    
    let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
    rotationAnimation.fromValue = 0
    rotationAnimation.toValue = Double.pi * 2
    rotationAnimation.duration = 2.0
    rotationAnimation.repeatCount = Float.infinity

    let opacityAnimation = CABasicAnimation(keyPath: "opacity")
    opacityAnimation.fromValue = 1.0
    opacityAnimation.toValue = 0.5
    opacityAnimation.duration = 1.0
    opacityAnimation.autoreverses = true
    opacityAnimation.repeatCount = Float.infinity
    
    view.layer.add(scaleAnimation, forKey: "scale")
    view.layer.add(rotationAnimation, forKey: "rotation")
    view.layer.add(opacityAnimation, forKey: "opacity")
}

/// A complex animation involving scale, rotation, opacity, and position changes.
func advancedAnimation(view: UIView) {
    let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
    scaleAnimation.fromValue = 1.0
    scaleAnimation.toValue = 2.0
    scaleAnimation.duration = 0.5
    scaleAnimation.autoreverses = true

    let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
    rotationAnimation.fromValue = 0
    rotationAnimation.toValue = Double.pi * 4
    rotationAnimation.duration = 1.0

    let opacityAnimation = CABasicAnimation(keyPath: "opacity")
    opacityAnimation.fromValue = 1.0
    opacityAnimation.toValue = 0.0
    opacityAnimation.duration = 1.0

    let positionAnimation = CAKeyframeAnimation(keyPath: "position")
    let path = UIBezierPath()
    path.move(to: view.center)
    path.addCurve(to: CGPoint(x: view.center.x + 200, y: view.center.y + 200),
                  controlPoint1: CGPoint(x: view.center.x + 100, y: view.center.y - 100),
                  controlPoint2: CGPoint(x: view.center.x + 300, y: view.center.y + 100))
    positionAnimation.path = path.cgPath
    positionAnimation.duration = 1.0

    let groupAnimation = CAAnimationGroup()
    groupAnimation.animations = [scaleAnimation, rotationAnimation, opacityAnimation, positionAnimation]
    groupAnimation.duration = 1.0
    groupAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
    
    view.layer.add(groupAnimation, forKey: "advancedAnimation")
}

/// Makes the view blink.
func blink(view: UIView) {
    UIView.animate(withDuration: 0.1, delay: 0, options: [.autoreverse, .repeat], animations: {
        view.alpha = 0
    }, completion: nil)
}

/// Makes the view vibrate.
func vibrate(view: UIView) {
    let animation = CAKeyframeAnimation(keyPath: "position")
    animation.values = [
        CGPoint(x: view.center.x, y: view.center.y),
        CGPoint(x: view.center.x + 5, y: view.center.y + 5),
        CGPoint(x: view.center.x - 5, y: view.center.y - 5),
        CGPoint(x: view.center.x + 5, y: view.center.y + 5),
        CGPoint(x: view.center.x, y: view.center.y)
    ]
    animation.keyTimes = [0, 0.1, 0.3, 0.6, 1]
    animation.duration = 0.5
    animation.repeatCount = .infinity
    view.layer.add(animation, forKey: "vibrate")
}

/// Makes the view move in a spiral path.
func spiral(view: UIView) {
    let animation = CAKeyframeAnimation(keyPath: "position")
    let path = UIBezierPath()
    path.move(to: view.center)
    path.addCurve(to: CGPoint(x: view.center.x + 100, y: view.center.y + 100),
                  controlPoint1: CGPoint(x: view.center.x, y: view.center.y - 100),
                  controlPoint2: CGPoint(x: view.center.x + 200, y: view.center.y + 100))
    animation.path = path.cgPath
    animation.duration = 2.0
    animation.repeatCount = .infinity
    view.layer.add(animation, forKey: "spiral")
}

/// Creates a flicker effect by changing the view's background color.
func colorFlicker(view: UIView) {
    let flickerAnimation = CABasicAnimation(keyPath: "backgroundColor")
    flickerAnimation.fromValue = UIColor.white.cgColor
    flickerAnimation.toValue = UIColor.red.cgColor
    flickerAnimation.duration = 0.1
    flickerAnimation.autoreverses = true
    flickerAnimation.repeatCount = .infinity
    view.layer.add(flickerAnimation, forKey: "colorFlicker")
}

/// Creates a plasma effect by rapidly changing the view's background color.
func plasma(view: UIView) {
    let colors: [UIColor] = [.red, .blue, .green, .purple, .orange] // You can use any set of colors
    var index = 0
    
    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
        UIView.transition(with: view, duration: 0.1, options: .transitionCrossDissolve, animations: {
            view.backgroundColor = colors[index]
        }, completion: nil)
        index = (index + 1) % colors.count
    }
}

/// Adds a gradient effect to the view.
func gradientEffect(view: UIView) {
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = view.bounds
    gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor] // You can use any colors
    gradientLayer.startPoint = CGPoint(x: 0, y: 0)
    gradientLayer.endPoint = CGPoint(x: 1, y: 1)
    view.layer.addSublayer(gradientLayer)
}

/// Makes the view scale up and down repeatedly.
func scalingAnimation(view: UIView) {
    let animation = CABasicAnimation(keyPath: "transform.scale")
    animation.fromValue = 0.5
    animation.toValue = 1.0
    animation.duration = 0.5
    animation.autoreverses = true
    animation.repeatCount = .infinity
    view.layer.add(animation, forKey: "scalingAnimation")
}

/// Makes the view move in a circular motion.
func circleMotionAnimation(view: UIView) {
    let animation = CAKeyframeAnimation(keyPath: "position")
    let path = UIBezierPath(arcCenter: view.superview!.center, radius: 100, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
    animation.path = path.cgPath
    animation.duration = 2.0
    animation.repeatCount = .infinity
    view.layer.add(animation, forKey: "circleMotionAnimation")
}

/// Creates a wave-like animation on the view.
func waveAnimation(view: UIView) {
    let animation = CAKeyframeAnimation(keyPath: "transform.translation.y")
    animation.values = [0, -20, 0]
    animation.keyTimes = [0, 0.5, 1]
    animation.duration = 0.5
    animation.repeatCount = .infinity
    view.layer.add(animation, forKey: "waveAnimation")
}

/// Changes the shape of the view.
func shapeChangeAnimation(view: UIView) {
    let animation = CABasicAnimation(keyPath: "cornerRadius")
    animation.fromValue = view.layer.cornerRadius
    animation.toValue = view.bounds.width / 2 // Example: changing to a round shape
    animation.duration = 1.0
    animation.autoreverses = true
    animation.repeatCount = .infinity
    view.layer.add(animation, forKey: "shapeChangeAnimation")
}

/// Moves the view along a specified path.
func pathMotionAnimation(view: UIView) {
    let animation = CAKeyframeAnimation(keyPath: "position")
    let path = UIBezierPath()
    path.move(to: view.center)
    path.addLine(to: CGPoint(x: view.center.x + 100, y: view.center.y + 100))
    path.addLine(to: CGPoint(x: view.center.x - 100, y: view.center.y + 100))
    path.addLine(to: view.center)
    animation.path = path.cgPath
    animation.duration = 2.0
    animation.repeatCount = .infinity
    view.layer.add(animation, forKey: "pathMotionAnimation")
}

/// Creates a noise flicker effect on the view.
func noiseFlickerAnimation(view: UIView) {
    let flickerAnimation = CABasicAnimation(keyPath: "opacity")
    flickerAnimation.fromValue = 1.0
    flickerAnimation.toValue = 0.5
    flickerAnimation.duration = 0.1
    flickerAnimation.autoreverses = true
    flickerAnimation.repeatCount = .infinity
    flickerAnimation.timingFunction = CAMediaTimingFunction(name: .linear)
    view.layer.add(flickerAnimation, forKey: "noiseFlickerAnimation")
}
