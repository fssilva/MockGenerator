// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

@testable import MockGenerator

class TestingPresenterMock: TestingPresenter {
  var niceVariablereturnValue: String!
  var niceVariable: String {
    get { return niceVariablereturnValue }
    set(value) { niceVariablereturnValue = value }
  }

  var niceVariable2returnValue: Int!
  var niceVariable2: Int {
    get { return niceVariable2returnValue }
    set(value) { niceVariable2returnValue = value }
  }

  // MARK: - emptyMethod

  var emptyMethodClosure: (() -> Void)?
  var emptyMethodCallsCount = 0
  var emptyMethodWasCalled: Bool {
    return emptyMethodCallsCount > 0
  }

  func emptyMethod() {
    emptyMethodCallsCount += 1
    emptyMethodClosure?()
  }

  // MARK: - methodWithThrow

  var methodWithThrowClosure: (() throws -> String)?
  var methodWithThrowThrowableError: Error?
  var methodWithThrowReturnValue: String!
  var methodWithThrowCallsCount = 0
  var methodWithThrowWasCalled: Bool {
    return methodWithThrowCallsCount > 0
  }

  func methodWithThrow() throws -> String {
    if let error = methodWithThrowThrowableError {
      throw error
    }
    methodWithThrowCallsCount += 1
    return try methodWithThrowClosure.map({ try $0() }) ?? methodWithThrowReturnValue
  }

  // MARK: - methodWithReturn

  var methodWithReturnClosure: (() -> String)?
  var methodWithReturnReturnValue: String!
  var methodWithReturnCallsCount = 0
  var methodWithReturnWasCalled: Bool {
    return methodWithReturnCallsCount > 0
  }

  func methodWithReturn() -> String {
    methodWithReturnCallsCount += 1
    return methodWithReturnClosure.map({ $0() }) ?? methodWithReturnReturnValue
  }

  // MARK: - methodWithSingleParamReturn

  var methodWithSingleParamReturnCrvshClosure: ((String) -> Void)?
  var methodWithSingleParamReturnCrvshReceivedCrvsh: String?
  var methodWithSingleParamReturnCrvshCallsCount = 0
  var methodWithSingleParamReturnCrvshWasCalled: Bool {
    return methodWithSingleParamReturnCrvshCallsCount > 0
  }

  func methodWithSingleParamReturn(crvsh: String) {
    methodWithSingleParamReturnCrvshCallsCount += 1
    methodWithSingleParamReturnCrvshReceivedCrvsh = crvsh
    methodWithSingleParamReturnCrvshClosure?(crvsh)
  }

  // MARK: - methodWithMultipleParams

  var methodWithMultipleParamsNameLastNameClosure: ((String, String) -> Void)?
  var methodWithMultipleParamsNameLastNameReceivedArguments: (name: String, lastName: String)?
  var methodWithMultipleParamsNameLastNameCallsCount = 0
  var methodWithMultipleParamsNameLastNameWasCalled: Bool {
    return methodWithMultipleParamsNameLastNameCallsCount > 0
  }

  func methodWithMultipleParams(name: String, lastName: String) {
    methodWithMultipleParamsNameLastNameCallsCount += 1
    methodWithMultipleParamsNameLastNameReceivedArguments = (name: name, lastName: lastName)
    methodWithMultipleParamsNameLastNameClosure?(name, lastName)
  }

  // MARK: - methodWithParamsAndReturn

  var methodWithParamsAndReturnNameLastNameClosure: ((String, String) -> String)?
  var methodWithParamsAndReturnNameLastNameReceivedArguments: (name: String, lastName: String)?
  var methodWithParamsAndReturnNameLastNameReturnValue: String!
  var methodWithParamsAndReturnNameLastNameCallsCount = 0
  var methodWithParamsAndReturnNameLastNameWasCalled: Bool {
    return methodWithParamsAndReturnNameLastNameCallsCount > 0
  }

  func methodWithParamsAndReturn(name: String, lastName: String) -> String {
    methodWithParamsAndReturnNameLastNameCallsCount += 1
    methodWithParamsAndReturnNameLastNameReceivedArguments = (name: name, lastName: lastName)
    return methodWithParamsAndReturnNameLastNameClosure.map({ $0(name, lastName) }) ?? methodWithParamsAndReturnNameLastNameReturnValue
  }
}
