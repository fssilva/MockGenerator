// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all

import Foundation
@testable import MockGenerator
import UIKit

// ======================== TestingPresenter ========================

class TestingPresenterMock: TestingPresenter {
  var setMyVariableParam: String?
  var myVariable: String = String() {
    didSet {
      setMyVariableParam = myVariable
    }
  }

  // MARK: - simpleMethod

  var simpleMethodCallsCount = 0
  var simpleMethodWasCalled: Bool {
    return simpleMethodCallsCount > 0
  }

  func simpleMethod() {
    simpleMethodCallsCount += 1
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

  // MARK: - methodWithSingleParam

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

  // MARK: - methodWithSingleOptionalParam

  var methodWithSingleOptionalParamCrvshReceivedArguments: [String?] = []
  var methodWithSingleOptionalParamCrvshLastArgumentReceived: (String?)? {
    return methodWithSingleOptionalParamCrvshReceivedArguments.last
  }

  var methodWithSingleOptionalParamCrvshReturnValue: Bool!
  var methodWithSingleOptionalParamCrvshCallsCount = 0
  var methodWithSingleOptionalParamCrvshWasCalled: Bool {
    return methodWithSingleOptionalParamCrvshCallsCount > 0
  }

  func methodWithSingleOptionalParam(crvsh: String?) -> Bool {
    methodWithSingleOptionalParamCrvshCallsCount += 1
    methodWithSingleOptionalParamCrvshReceivedArguments.append(crvsh)
    return methodWithSingleOptionalParamCrvshReturnValue
  }

  // MARK: - methodWithMultipleParams

  var methodWithMultipleParamsNameLastNameReceivedArguments: [(name: String, lastName: String)] = []
  var methodWithMultipleParamsNameLastNameLastArgumentReceived: ((name: String, lastName: String))? {
    return methodWithMultipleParamsNameLastNameReceivedArguments.last
  }

  var methodWithMultipleParamsNameLastNameCallsCount = 0
  var methodWithMultipleParamsNameLastNameWasCalled: Bool {
    return methodWithMultipleParamsNameLastNameCallsCount > 0
  }

  func methodWithMultipleParams(name: String, lastName: String) {
    methodWithMultipleParamsNameLastNameCallsCount += 1
    methodWithMultipleParamsNameLastNameReceivedArguments.append((name: name, lastName: lastName))
  }

  // MARK: - methodThrowWithParamsAndReturn

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

  // MARK: - methodWithScape

  var methodWithScapeCompletionReceivedArguments: [(Bool, Error?) -> Void] = []
  var methodWithScapeCompletionLastArgumentReceived: ((Bool, Error?) -> Void)? {
    return methodWithScapeCompletionReceivedArguments.last
  }

  var methodWithScapeCompletionCallsCount = 0
  var methodWithScapeCompletionWasCalled: Bool {
    return methodWithScapeCompletionCallsCount > 0
  }

  func methodWithScape(completion: @escaping (Bool, Error?) -> Void) {
    methodWithScapeCompletionCallsCount += 1
    methodWithScapeCompletionReceivedArguments.append(completion)
  }

  // MARK: - genericMethod<T>

  var genericMethodParamParam2ReceivedArguments: [(param: Any, param2: Any)] = []
  var genericMethodParamParam2LastArgumentReceived: ((param: Any, param2: Any))? {
    return genericMethodParamParam2ReceivedArguments.last
  }

  var genericMethodParamParam2ReturnValue: Any!
  var genericMethodParamParam2CallsCount = 0
  var genericMethodParamParam2WasCalled: Bool {
    return genericMethodParamParam2CallsCount > 0
  }

  func genericMethod<T>(param: GenericClass<T>, param2: String) -> T {
    genericMethodParamParam2CallsCount += 1
    genericMethodParamParam2ReceivedArguments.append((param: param, param2: param2))
    return genericMethodParamParam2ReturnValue as! T
  }

  // MARK: - anotherGenericMethod<T>

  var anotherGenericMethodParamThrowableError: Error?
  var anotherGenericMethodParamReceivedArguments: [Any] = []
  var anotherGenericMethodParamLastArgumentReceived: Any? {
    return anotherGenericMethodParamReceivedArguments.last
  }

  var anotherGenericMethodParamReturnValue: Any!
  var anotherGenericMethodParamCallsCount = 0
  var anotherGenericMethodParamWasCalled: Bool {
    return anotherGenericMethodParamCallsCount > 0
  }

  func anotherGenericMethod<T>(param: T) throws -> T {
    if let error = anotherGenericMethodParamThrowableError {
      throw error
    }
    anotherGenericMethodParamCallsCount += 1
    anotherGenericMethodParamReceivedArguments.append(param)
    return anotherGenericMethodParamReturnValue as! T
  }
}

// ======================== Test ========================

class TestMock: Test {

  // MARK: - methodWithSingleParam

  var methodWithSingleParamCrvshReceivedArguments: [String?] = []
  var methodWithSingleParamCrvshLastArgumentReceived: (String?)? {
    return methodWithSingleParamCrvshReceivedArguments.last
  }

  var methodWithSingleParamCrvshReturnValue: Bool!
  var methodWithSingleParamCrvshCallsCount = 0
  var methodWithSingleParamCrvshWasCalled: Bool {
    return methodWithSingleParamCrvshCallsCount > 0
  }

  override func methodWithSingleParam(crvsh: String?) -> Bool {
    methodWithSingleParamCrvshCallsCount += 1
    methodWithSingleParamCrvshReceivedArguments.append(crvsh)
    return methodWithSingleParamCrvshReturnValue
  }

  // MARK: - methodWithSingleOptionalParam

  var methodWithSingleOptionalParamCrvshReceivedArguments: [String?] = []
  var methodWithSingleOptionalParamCrvshLastArgumentReceived: (String?)? {
    return methodWithSingleOptionalParamCrvshReceivedArguments.last
  }

  var methodWithSingleOptionalParamCrvshReturnValue: Bool!
  var methodWithSingleOptionalParamCrvshCallsCount = 0
  var methodWithSingleOptionalParamCrvshWasCalled: Bool {
    return methodWithSingleOptionalParamCrvshCallsCount > 0
  }

  override func methodWithSingleOptionalParam(crvsh: String?) -> Bool {
    methodWithSingleOptionalParamCrvshCallsCount += 1
    methodWithSingleOptionalParamCrvshReceivedArguments.append(crvsh)
    return methodWithSingleOptionalParamCrvshReturnValue
  }

  // MARK: - methodWithMultipleParams

  var methodWithMultipleParamsNameLastNameReceivedArguments: [(name: String, lastName: String)] = []
  var methodWithMultipleParamsNameLastNameLastArgumentReceived: ((name: String, lastName: String))? {
    return methodWithMultipleParamsNameLastNameReceivedArguments.last
  }

  var methodWithMultipleParamsNameLastNameCallsCount = 0
  var methodWithMultipleParamsNameLastNameWasCalled: Bool {
    return methodWithMultipleParamsNameLastNameCallsCount > 0
  }

  override func methodWithMultipleParams(name: String, lastName: String) {
    methodWithMultipleParamsNameLastNameCallsCount += 1
    methodWithMultipleParamsNameLastNameReceivedArguments.append((name: name, lastName: lastName))
  }

  // MARK: - methodWithScape

  var methodWithScapeCompletionReceivedArguments: [(Bool, Error?) -> Void] = []
  var methodWithScapeCompletionLastArgumentReceived: ((Bool, Error?) -> Void)? {
    return methodWithScapeCompletionReceivedArguments.last
  }

  var methodWithScapeCompletionCallsCount = 0
  var methodWithScapeCompletionWasCalled: Bool {
    return methodWithScapeCompletionCallsCount > 0
  }

  override func methodWithScape(completion: @escaping (Bool, Error?) -> Void) {
    methodWithScapeCompletionCallsCount += 1
    methodWithScapeCompletionReceivedArguments.append(completion)
  }
}
