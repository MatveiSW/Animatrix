//
//  File.swift
//  
//
//  Created by Матвей Авдеев on 05.06.2024.
//

import UIKit


func appearance(view: UIView, duration: Double) {
    view.alpha = 0
    UIView.animate(withDuration: duration) {
        view.alpha = 1
    }
}

func disappearance(view: UIView, duration: Double) {
    view.alpha = 1
    UIView.animate(withDuration: duration) {
        view.alpha = 0
    }
}

func shake(view: UIView, direction: String, duration: Double) {
    let animation = CAKeyframeAnimation(keyPath: "transform.translation.\(direction)")
    animation.timingFunction = CAMediaTimingFunction(name: .linear)
    animation.values = [-30, 30, -20, 20, -10, 10, -5, 5, -3, 3, 0]
    animation.duration = duration
    view.layer.add(animation, forKey: "shake")
}

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

func explode(view: UIView) {
    UIView.animate(withDuration: 0.2, animations: {
        view.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        view.alpha = 0.0
    }, completion: { _ in
        view.transform = CGAffineTransform.identity
        view.alpha = 1.0
    })
}

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

