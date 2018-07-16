// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all

@testable import MockGenerator

// ======================== TestingPresenter ========================

class TestingPresenterMock: TestingPresenter {
  var niceVariableReturnValue: String!
  var niceVariable: String {
    get { return niceVariableReturnValue }
    set(value) { niceVariableReturnValue = value }
  }

  var niceVariable2: Int?

  // MARK: - emptyMethod

  var emptyMethodCallsCount = 0
  var emptyMethodWasCalled: Bool {
    return emptyMethodCallsCount > 0
  }

  func emptyMethod() {
    emptyMethodCallsCount += 1
  }

  // MARK: - methodWithThrow

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
    return methodWithThrowReturnValue
  }

  // MARK: - methodWithReturn

  var methodWithReturnReturnValue: String!
  var methodWithReturnCallsCount = 0
  var methodWithReturnWasCalled: Bool {
    return methodWithReturnCallsCount > 0
  }

  func methodWithReturn() -> String {
    methodWithReturnCallsCount += 1
    return methodWithReturnReturnValue
  }

  // MARK: - methodWithSingleParamReturn

  var methodWithSingleParamReturnCrvshReceivedCrvsh: String?
  var methodWithSingleParamReturnCrvshCallsCount = 0
  var methodWithSingleParamReturnCrvshWasCalled: Bool {
    return methodWithSingleParamReturnCrvshCallsCount > 0
  }

  func methodWithSingleParamReturn(crvsh: String) {
    methodWithSingleParamReturnCrvshCallsCount += 1
    methodWithSingleParamReturnCrvshReceivedCrvsh = crvsh
  }

  // MARK: - methodWithMultipleParams

  var methodWithMultipleParamsNameLastNameReceivedArguments: [(name: String, lastName: String)] = []
  var methodWithMultipleParamsNameLastNameCallsCount = 0
  var methodWithMultipleParamsNameLastNameWasCalled: Bool {
    return methodWithMultipleParamsNameLastNameCallsCount > 0
  }

  func methodWithMultipleParams(name: String, lastName: String) {
    methodWithMultipleParamsNameLastNameCallsCount += 1
    methodWithMultipleParamsNameLastNameReceivedArguments.append((name: name, lastName: lastName))
  }

  // MARK: - methodWithParamsAndReturn

  var methodWithParamsAndReturnNameLastNameReceivedArguments: [(name: String, lastName: String)] = []
  var methodWithParamsAndReturnNameLastNameReturnValue: String!
  var methodWithParamsAndReturnNameLastNameCallsCount = 0
  var methodWithParamsAndReturnNameLastNameWasCalled: Bool {
    return methodWithParamsAndReturnNameLastNameCallsCount > 0
  }

  func methodWithParamsAndReturn(name: String, lastName: String) -> String {
    methodWithParamsAndReturnNameLastNameCallsCount += 1
    methodWithParamsAndReturnNameLastNameReceivedArguments.append((name: name, lastName: lastName))
    return methodWithParamsAndReturnNameLastNameReturnValue
  }

  // MARK: - methodWithScape

  var methodWithScapeCompletionReceivedCompletion: ((Bool, Error?) -> Void)?
  var methodWithScapeCompletionCallsCount = 0
  var methodWithScapeCompletionWasCalled: Bool {
    return methodWithScapeCompletionCallsCount > 0
  }

  func methodWithScape(completion: @escaping (Bool, Error?) -> Void) {
    methodWithScapeCompletionCallsCount += 1
    methodWithScapeCompletionReceivedCompletion = completion
  }
}
