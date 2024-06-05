// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public enum Animation: String {
    case appearance
    
}

public struct Animatrix {
    public static func startAnimationIn(view: UIView, animation: Animation, duration: Double) {
        switch animation {
            
        case .appearance:
           appearance(view: view, duration: duration)
        }
    }
}

private func appearance(view: UIView, duration: Double) {
    view.alpha = 0
    UIView.animate(withDuration: duration) {
        view.alpha = 1
    }
}
