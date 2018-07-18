# MockGenerator 

iOS Mock Generator provides the ability to easily generate mocks for swift protocols. It removes the boilerplate coding required to use mocks in your app.

[![Build Status](https://travis-ci.org/fssilva/MockGenerator.svg?branch=develop)](https://travis-ci.org/fssilva/MockGenerator)

## Installation

### Dependencies
Add the following dependencies into your `Podfile`

```ruby
pod 'Sourcery'
pod 'SwiftFormat/CLI'
```

### Resources
1. Copy the following files into your project's root folder


* `.sourcery.yml` - Sourcery configuration file
* `AutoMockable.stencil` - Mock template

2. Open the `.sourcery.yml` and change `MockGenerator` to your project's name. If you have any external dependency you can include them in the `dependencies` list
```
...

args:
  project: "MockGenerator"
  dependencies: ["Foundation", "UIKit"]
```

### Xcode Build Scripts
Add the following run script in your build phase in the mentioned sequence

1. [Sourcery](https://github.com/krzysztofzablocki/Sourcery)
```ruby
"$PODS_ROOT/Sourcery/bin/sourcery"`
```

2. [SwiftFormat](https://github.com/nicklockwood/SwiftFormat)
```ruby
"${PODS_ROOT}/SwiftFormat/CommandLineTool/swiftformat" --indent 2 "${SRCROOT}/AutoMockable.generated.swift"
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

After building the project a file called  `AutoMockable.generated.swift` will be generated. Add this file into the project for the test target.

## Expected Behavior

### For Variables
1. Variable with get only

```swift
var myVariable: String { get }

// Outputs

var myVariableReturnValue: String!
var myVariable: String {
  get { return myVariableReturnValue }
  set(value) { myVariableReturnValue = value }
}
```

2. Variable with get and set
```swift
var myVariableSet: String { get set }

// Outputs

var myVariableSetReturnValue: String!
var myVariableSet: String {
  get { return myVariableSetReturnValue }
  set(value) { myVariableSetReturnValue = value }
}
```

### For Functions

1. Function returning Void without parameters

```swift
func emptyMethod()

// Outputs

var emptyMethodCallsCount = 0
var emptyMethodWasCalled: Bool {
  return emptyMethodCallsCount > 0
}

func emptyMethod() {
  emptyMethodCallsCount += 1
}
```

2. Function returning Type without parameters

```swift
func methodWithReturn() -> String

// Outputs

var methodWithReturnReturnValue: String!
var methodWithReturnCallsCount = 0
var methodWithReturnWasCalled: Bool {
  return methodWithReturnCallsCount > 0
}

func methodWithReturn() -> String {
  methodWithReturnCallsCount += 1
  return methodWithReturnReturnValue
}
```

3. Function returning Type with one parameter

```swift
func methodWithSingleParam(crvsh: String) -> Bool

// Outputs

var methodWithSingleParamCrvshReceivedCrvsh: String?
var methodWithSingleParamCrvshReturnValue: Bool!
var methodWithSingleParamCrvshCallsCount = 0
var methodWithSingleParamCrvshWasCalled: Bool {
  return methodWithSingleParamCrvshCallsCount > 0
}

func methodWithSingleParam(crvsh: String) -> Bool {
  methodWithSingleParamCrvshCallsCount += 1
  methodWithSingleParamCrvshReceivedCrvsh = crvsh
  return methodWithSingleParamCrvshReturnValue
}
```

4. Function returning Type with many parameters

```swift
func methodWithParamsAndReturn(param1: String, param2: String) -> Bool

// Outputs

var methodWithParamsAndReturnParam1Param2ReceivedArguments: [(param1: String, param2: String)] = []
var methodWithParamsAndReturnParam1Param2ReturnValue: Bool!
var methodWithParamsAndReturnParam1Param2CallsCount = 0
var methodWithParamsAndReturnParam1Param2WasCalled: Bool {
  return methodWithParamsAndReturnParam1Param2CallsCount > 0
}

func methodWithParamsAndReturn(param1: String, param2: String) -> Bool {
  methodWithParamsAndReturnParam1Param2CallsCount += 1
  methodWithParamsAndReturnParam1Param2ReceivedArguments.append((param1: param1, param2: param2))
  return methodWithParamsAndReturnParam1Param2ReturnValue
}
```

5. Function that can throw with return Type and many parameters 

```swift
func methodThrowWithParamsAndReturn(param1: String, param2: String) throws -> Bool

// Outputs

var methodThrowWithParamsAndReturnParam1Param2ThrowableError: Error?
var methodThrowWithParamsAndReturnParam1Param2ReceivedArguments: [(param1: String, param2: String)] = []
var methodThrowWithParamsAndReturnParam1Param2ReturnValue: Bool!
var methodThrowWithParamsAndReturnParam1Param2CallsCount = 0
var methodThrowWithParamsAndReturnParam1Param2WasCalled: Bool {
  return methodThrowWithParamsAndReturnParam1Param2CallsCount > 0
}

func methodThrowWithParamsAndReturn(param1: String, param2: String) throws -> Bool {
  if let error = methodThrowWithParamsAndReturnParam1Param2ThrowableError {
    throw error
  }
  methodThrowWithParamsAndReturnParam1Param2CallsCount += 1
  methodThrowWithParamsAndReturnParam1Param2ReceivedArguments.append((param1: param1, param2: param2))
  return methodThrowWithParamsAndReturnParam1Param2ReturnValue
}
```

## Limitations

1. Code generation for classes only apply for methods (Experimental)

2. Generic types are not supported
```swift
func methodGeneric(type: T) -> String
```

3. Protocols with function overload are not supported (Coming soon)
```swift
func methodWithSingleParam(crvsh: String) -> Bool
func methodWithSingleParam(crvsh: Int) -> Bool
```