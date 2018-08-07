# MockGenerator 

iOS Mock Generator provides the ability to easily generate mocks for swift protocols and classes. It removes the boilerplate coding required to use mocks in your app.

[![Build Status](https://travis-ci.org/fssilva/MockGenerator.svg?branch=develop)](https://travis-ci.org/fssilva/MockGenerator)

## Installation

### Dependencies
Add the following dependencies into your `Podfile`

```ruby
pod 'Sourcery'
pod 'SwiftFormat/CLI'
```

### Resources
1. Copy the following file/folder into your project's root folder


* `.sourcery.yml` - Sourcery configuration file
* `Templates` - Mock template folder

2. Open the `.sourcery.yml` and change `MockGenerator` to your product name. If you have any external dependency you can include them in the `dependencies` list
```
...

args:
  productName: "MockGenerator"
  dependencies: ["Foundation", "UIKit"]
```

### Xcode Build Scripts
Add the following run script in your build phase in the mentioned sequence

1. [Sourcery](https://github.com/krzysztofzablocki/Sourcery)
```ruby
"$PODS_ROOT/Sourcery/bin/sourcery"
```

2. [SwiftFormat](https://github.com/nicklockwood/SwiftFormat)
```ruby
"${PODS_ROOT}/SwiftFormat/CommandLineTool/swiftformat" --indent 2 "${SRCROOT}/Tests/AutoMockable.generated.swift"
```

## Usage
In order to use the mock generator you have use the sourcery annotation `Mock` e.g.

```swift
// sourcery: Mock
protocol MyProtocol {
    ...
}


// sourcery: Mock
class MyClass {
    ...
}
```

If the protocol or class contains a generic method. Use the `Generic` keyword to generate the code e.g.

> Note that only methods are supported. Generic protocol or classes are in progress.

```swift
// sourcery: Mock
protocol MyProtocol {
    // sourcery: Generic
    func myMethod<T>(param: T) -> T
}
```

After building the project a file called  `AutoMockable.generated.swift` will be generated. Add this file into the project for the test target.

## Example
Consider the example of a `Window` object that can use a canvas to draw an item on it.

```swift
// sourcery: Mock
protocol Displayable {
  var name: String { get }
}

final class Content: Displayable {
  var name: String {
    return "Foo"
  }
}

// sourcery: Mock
protocol Drawable {
  func draw(_ item: Displayable)
}

final class Canvas: Drawable {
  func draw(_ item: Displayable) {
    print(item.name)
  }
}

final class Window {
  let canvas: Drawable
  let item: Displayable

  init(item: Displayable, canvas: Drawable) {
    self.item = item
    self.canvas = canvas
  }

  func show() {
    canvas.draw(item)
  }
}
```

This is how we can test the `Window`.

```swift
class WindowTests: XCTestCase {

  var canvasMock: DrawableMock!
  var contentMock: DisplayableMock!
  var sut: Window!

  override func setUp() {
    canvasMock = DrawableMock()
    contentMock = DisplayableMock()
    sut = Window(item: contentMock, canvas: canvasMock)
  }

  func testWindowsDraw() {
    // Given
    contentMock.name = "Bar"
    expect(self.canvasMock.drawLastArgumentReceived).to(beNil())

    // When
    sut.show()

    // Then
    expect(self.canvasMock.drawLastArgumentReceived?.name) == contentMock.name
  }
}
```

## Expected Behavior

If you want to know more details about the different generated types, check the [EXPECTED](EXPECTED.md) file.

## Limitations

1. Code generation for classes only apply for methods (Experimental)

2. Generic types are limited to methods only. (Experimental)
```swift
func methodGeneric<T>(type: T) -> String
```

3. Protocols with function overload are not supported (Coming soon)
```swift
func methodWithSingleParam(crvsh: String) -> Bool
func methodWithSingleParam(crvsh: Int) -> Bool
```