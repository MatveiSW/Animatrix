// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public enum Animation: String {
    case appearance
    
}

public struct Animatrix {
    public static func thisPrint(view: UIView, animation: Animation) {
        switch animation {
            
        case .appearance:
           appearance(view: view)
        }
    }
}

private func appearance(view: UIView) {
    view.alpha = 0
    UIView.animate(withDuration: 2) {
        view.alpha = 1
    }
}
