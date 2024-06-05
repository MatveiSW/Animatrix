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
        case .scatter: // Добавленная анимация
            scatter(view: view)
        case .blink: // Добавленная анимация
            blink(view: view)
        case .vibrate: // Добавленная анимация
            vibrate(view: view)
        case .spiral: // Добавленная анимация
            spiral(view: view)
        case .colorFlicker: // Добавленная анимация
            colorFlicker(view: view)
        }
    }
}

