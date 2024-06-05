# Animatrix Animation Library

A powerful library to add various animations to your UIView in Swift.

## Overview

The `Animatrix` library provides a collection of pre-defined animations that can be easily applied to any UIView. These animations include effects like appearance, disappearance, shaking, pulsing, exploding, and more advanced and complex animations. Each animation can be used to enhance the user interface and provide visual feedback or entertainment.

## Topics

### Basic Animations

- `appearance(view: UIView, duration: Double)`
  - Fades the view in over the specified duration.
- `disappearance(view: UIView, duration: Double)`
  - Fades the view out over the specified duration.
- `shake(view: UIView, direction: String, duration: Double)`
  - Shakes the view horizontally or vertically based on the direction provided.
- `pulse(view: UIView)`
  - Makes the view pulse by scaling it up and down.
- `explode(view: UIView)`
  - Simulates an explosion effect by scaling the view up and fading it out.

### Complex Animations

- `complexAnimation(view: UIView)`
  - Combines scale, rotation, and opacity changes in a looping animation.
- `advancedAnimation(view: UIView)`
  - Includes scaling, rotating, changing opacity, and moving along a bezier path.

### Fun Animations

- `blink(view: UIView)`
  - Makes the view blink by quickly toggling its opacity.
- `vibrate(view: UIView)`
  - Creates a vibration effect by quickly changing the view's position.
- `spiral(view: UIView)`
  - Moves the view along a spiral path.
- `colorFlicker(view: UIView)`
  - Continuously changes the view's background color.
- `plasma(view: UIView)`
  - Cycles through a set of colors to create a plasma effect.
- `gradientEffect(view: UIView)`
  - Adds a gradient effect to the view.
- `scalingAnimation(view: UIView)`
  - Continuously scales the view up and down.
- `circleMotionAnimation(view: UIView)`
  - Moves the view in a circular path.
- `waveAnimation(view: UIView)`
  - Creates a wave-like motion in the view.
- `shapeChangeAnimation(view: UIView)`
  - Changes the view's shape by modifying its corner radius.
- `pathMotionAnimation(view: UIView)`
  - Moves the view along a custom path.
- `noiseFlickerAnimation(view: UIView)`
  - Creates a flickering effect by changing the view's opacity.

### Advanced Animations

- `appearance(view: UIView, duration: Double)`
  - Fades in the view over the specified duration.
- `disappearance(view: UIView, duration: Double)`
  - Fades out the view over the specified duration.
- `shake(view: UIView, direction: String, duration: Double)`
  - Shakes the view horizontally or vertically based on the direction provided.
- `pulse(view: UIView)`
  - Makes the view pulse by scaling it up and down.
- `explode(view: UIView)`
  - Simulates an explosion effect by scaling the view up and fading it out.
- `complexAnimation(view: UIView)`
  - Combines scale, rotation, and opacity changes in a looping animation.
- `advancedAnimation(view: UIView)`
  - Includes scaling, rotating, changing opacity, and moving along a bezier path.
