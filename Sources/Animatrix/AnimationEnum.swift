//
//  File.swift
//  
//
//  Created by Матвей Авдеев on 05.06.2024.
//

//
//  File.swift
//
//
//  Created by Матвей Авдеев on 05.06.2024.
//

import UIKit

/// Enum representing different types of animations.
public enum Animation {
    /// Makes the view appear by fading in.
    case appearance
    /// Makes the view disappear by fading out.
    case disappearance
    /// Makes the view shake horizontally.
    case shakeHorizontal
    /// Makes the view shake vertically.
    case shakeVertical
    /// Makes the view pulse.
    case pulse
    /// Makes the view explode.
    case explode
    /// A complex animation combining scale, rotation, and opacity changes.
    case complexAnimation
    /// A complex animation involving scale, rotation, opacity, and position changes.
    case advancedAnimation
    /// Makes the view blink.
    case blink
    /// Makes the view vibrate.
    case vibrate
    /// Makes the view move in a spiral path.
    case spiral
    /// Creates a flicker effect by changing the view's background color.
    case colorFlicker
    /// Creates a plasma effect by rapidly changing the view's background color.
    case plasma
    /// Adds a gradient effect to the view.
    case gradientEffect
    /// Makes the view scale up and down repeatedly.
    case scalingAnimation
    /// Makes the view move in a circular motion.
    case circleMotionAnimation
    /// Creates a wave-like animation on the view.
    case waveAnimation
    /// Changes the shape of the view.
    case shapeChangeAnimation
    /// Moves the view along a specified path.
    case pathMotionAnimation
    /// Creates a noise flicker effect on the view.
    case noiseFlickerAnimation
}
