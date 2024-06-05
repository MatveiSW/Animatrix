// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public enum Animation {
    case slide
    
    var action: String {
        switch self {
            
        case .slide:
            return "asdasd"
        }
    }
    
}

public struct Animatrix {
    public static func thisPrint(text: Animation) {
        print("text")
    }
}
