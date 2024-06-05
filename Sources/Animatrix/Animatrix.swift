// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

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
        case .blink:
            blink(view: view)
        case .vibrate:
            vibrate(view: view)
        case .spiral:
            spiral(view: view)
        case .colorFlicker: 
            colorFlicker(view: view)
        case .plasma:
            plasma(view: view)
        case .gradientEffect:
            gradientEffect(view: view)
        case .scalingAnimation:
            scalingAnimation(view: view)
        case .circleMotionAnimation:
            circleMotionAnimation(view: view)
        case .waveAnimation:
            waveAnimation(view: view)
        case .shapeChangeAnimation:
            shapeChangeAnimation(view: view)
        case .pathMotionAnimation:
            pathMotionAnimation(view: view)
        case .noiseFlickerAnimation:
            noiseFlickerAnimation(view: view)
        }
    }
}

