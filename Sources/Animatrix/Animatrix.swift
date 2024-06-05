// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public enum Animation: String {
    case slide
    case print
    
}

public struct Animatrix {
    public static func thisPrint(text: Animation) {
        switch text {
            
        case .slide:
            print("hello slide")
        case .print:
            print("hello print")
        }
    }
}
