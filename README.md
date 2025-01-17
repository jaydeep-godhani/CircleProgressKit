# CircleProgressKit

`CircleProgressKit` is a customizable circular progress view for iOS, allowing easy visualization of progress with an optional central image. This library is implemented as a Swift file, ready to integrate directly into your project.

## Features

- Circular progress visualization with adjustable colors and line width.
- Supports both clockwise and counterclockwise progress animation.
- Central image support with customizable insets and content mode.
- Lightweight and easy to use.
- Fully customizable properties via code or Interface Builder.

## Installation

### Manual Integration

1. Download or clone this repository.
2. Copy the `CircleProgressView.swift` file into your project.
3. Ensure the file is added to the correct target in your project.

## Usage

### Programmatically

```swift
import UIKit

// Create and configure a CircleProgressView instance
let circleProgressView = CircleProgressView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
circleProgressView.image = UIImage(named: "profile")
circleProgressView.seenProgressColor = .blue
circleProgressView.unseenProgressColor = .lightGray
circleProgressView.lineWidth = 4.0
circleProgressView.total = 5
circleProgressView.setProgress(progress: 3, animated: true)

// Add to your view
view.addSubview(circleProgressView)
```

### Using Interface Builder

1. Drag a `UIView` into your storyboard or XIB file.
2. Set the class to `CircleProgressView` in the Identity Inspector.
3. Customize the available properties in the Attributes Inspector:
- `image`
- `seenProgressColor`
- `unseenProgressColor`
- `lineWidth`
- `imageInset`
- `clockwise`
  
## Customization

- `image`: Set a central image for the progress view.
- `seenProgressColor`: The color of the completed portion of the progress.
- `unseenProgressColor`: The color of the remaining progress.
- `lineWidth`: The width of the circular progress stroke.
- `total`: The total segments of the progress.
- `progress`: The current progress value, which can be set using the `setProgress(progress:animated:)` method.
- `clockwise`: Set to `true` for clockwise progress or `false` for counterclockwise.

## Example

To see a fully working example: 
1. set up a `CircleProgressView` instance in a simple project
2. Alternatively, use Interface Builder to add one to your storyboard and customize its properties.

## Contributions

Contributions are welcome! If you find any issues or want to enhance this project, feel free to submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
