# Expected Behavior

## For Variables
1. Variable with get only

```swift
var myVariable: String { get }

// Outputs

var setMyVariableParam: String?
var myVariable: String = String() {
  didSet {
    setMyVariableParam = myVariable
  }
}
```

2. Variable with get and set
```swift
var myVariable: String { get set }

// Outputs

var setMyVariableParam: String?
var myVariable: String = String() {
  didSet {
    setMyVariableParam = myVariable
  }
}
```

## For Functions

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

var methodWithSingleParamCrvshReceivedArguments: [String] = []
var methodWithSingleParamCrvshLastArgumentReceived: String? {
  return methodWithSingleParamCrvshReceivedArguments.last
}

var methodWithSingleParamCrvshReturnValue: Bool!
var methodWithSingleParamCrvshCallsCount = 0
var methodWithSingleParamCrvshWasCalled: Bool {
  return methodWithSingleParamCrvshCallsCount > 0
}

func methodWithSingleParam(crvsh: String) -> Bool {
  methodWithSingleParamCrvshCallsCount += 1
  methodWithSingleParamCrvshReceivedArguments.append(crvsh)
  return methodWithSingleParamCrvshReturnValue
}
```

4. Function returning Type with many parameters

```swift
func methodWithParamsAndReturn(param1: String, param2: String) -> Bool

// Outputs

var methodWithParamsAndReturnParam1Param2ReceivedArguments: [(param1: String, param2: String)] = []
var methodWithParamsAndReturnParam1Param2LastArgumentReceived: ((param1: String, param2: String))? {
  return methodWithParamsAndReturnParam1Param2ReceivedArguments.last
}

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
var methodThrowWithParamsAndReturnParam1Param2LastArgumentReceived: ((param1: String, param2: String))? {
  return methodThrowWithParamsAndReturnParam1Param2ReceivedArguments.last
}

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