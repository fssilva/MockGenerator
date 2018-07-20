// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all

import Foundation
@testable import MockGenerator
import UIKit

// ======================== BasicProtocol ========================

class BasicProtocolMock: BasicProtocol {

  // MARK: - loadConfiguration

  var loadConfigurationReturnValue: String?
  var loadConfigurationCallsCount = 0
  var loadConfigurationWasCalled: Bool {
    return loadConfigurationCallsCount > 0
  }

  func loadConfiguration() -> String? {
    loadConfigurationCallsCount += 1
    return loadConfigurationReturnValue
  }

  // MARK: - save

  var saveConfigurationReceivedArguments: [String] = []
  var saveConfigurationLastArgumentReceived: String? {
    return saveConfigurationReceivedArguments.last
  }

  var saveConfigurationCallsCount = 0
  var saveConfigurationWasCalled: Bool {
    return saveConfigurationCallsCount > 0
  }

  func save(configuration: String) {
    saveConfigurationCallsCount += 1
    saveConfigurationReceivedArguments.append(configuration)
  }
}

// ======================== ClosureProtocol ========================

class ClosureProtocolMock: ClosureProtocol {

  // MARK: - setClosure

  var setClosureReceivedArguments: [() -> Void] = []
  var setClosureLastArgumentReceived: (() -> Void)? {
    return setClosureReceivedArguments.last
  }

  var setClosureCallsCount = 0
  var setClosureWasCalled: Bool {
    return setClosureCallsCount > 0
  }

  func setClosure(_ closure: @escaping () -> Void) {
    setClosureCallsCount += 1
    setClosureReceivedArguments.append(closure)
  }
}

// ======================== CurrencyPresenter ========================

class CurrencyPresenterMock: CurrencyPresenter {

  // MARK: - showSourceCurrency

  var showSourceCurrencyReceivedArguments: [String] = []
  var showSourceCurrencyLastArgumentReceived: String? {
    return showSourceCurrencyReceivedArguments.last
  }

  var showSourceCurrencyCallsCount = 0
  var showSourceCurrencyWasCalled: Bool {
    return showSourceCurrencyCallsCount > 0
  }

  func showSourceCurrency(_ currency: String) {
    showSourceCurrencyCallsCount += 1
    showSourceCurrencyReceivedArguments.append(currency)
  }
}

// ======================== ExtendableProtocol ========================

class ExtendableProtocolMock: ExtendableProtocol {
  var setCanReportParam: Bool?
  var canReport: Bool = Bool() {
    didSet {
      setCanReportParam = canReport
    }
  }

  // MARK: - report

  var reportMessageReceivedArguments: [String] = []
  var reportMessageLastArgumentReceived: String? {
    return reportMessageReceivedArguments.last
  }

  var reportMessageCallsCount = 0
  var reportMessageWasCalled: Bool {
    return reportMessageCallsCount > 0
  }

  func report(message: String) {
    reportMessageCallsCount += 1
    reportMessageReceivedArguments.append(message)
  }
}

// ======================== InitializationProtocol ========================

class InitializationProtocolMock: InitializationProtocol {

  // MARK: - init

  var initIntParameterStringParameterOptionalParameterReceivedArguments: [(intParameter: Int, stringParameter: String, optionalParameter: String?)] = []
  var initIntParameterStringParameterOptionalParameterLastArgumentReceived: ((intParameter: Int, stringParameter: String, optionalParameter: String?))? {
    return initIntParameterStringParameterOptionalParameterReceivedArguments.last
  }

  required init(intParameter: Int, stringParameter: String, optionalParameter: String?) {
    initIntParameterStringParameterOptionalParameterReceivedArguments.append((intParameter: intParameter, stringParameter: stringParameter, optionalParameter: optionalParameter))
  }

  // MARK: - start

  var startCallsCount = 0
  var startWasCalled: Bool {
    return startCallsCount > 0
  }

  func start() {
    startCallsCount += 1
  }

  // MARK: - stop

  var stopCallsCount = 0
  var stopWasCalled: Bool {
    return stopCallsCount > 0
  }

  func stop() {
    stopCallsCount += 1
  }
}

// ======================== ReservedWordsProtocol ========================

class ReservedWordsProtocolMock: ReservedWordsProtocol {

  // MARK: - `continue`

  var continueWithReceivedArguments: [String] = []
  var continueWithLastArgumentReceived: String? {
    return continueWithReceivedArguments.last
  }

  var continueWithReturnValue: String!
  var continueWithCallsCount = 0
  var continueWithWasCalled: Bool {
    return continueWithCallsCount > 0
  }

  func `continue`(with message: String) -> String {
    continueWithCallsCount += 1
    continueWithReceivedArguments.append(message)
    return continueWithReturnValue
  }
}

// ======================== SameShortMethodNamesProtocol ========================

class SameShortMethodNamesProtocolMock: SameShortMethodNamesProtocol {

  // MARK: - start

  var startCarOfReceivedArguments: [(car: String, model: String)] = []
  var startCarOfLastArgumentReceived: ((car: String, model: String))? {
    return startCarOfReceivedArguments.last
  }

  var startCarOfCallsCount = 0
  var startCarOfWasCalled: Bool {
    return startCarOfCallsCount > 0
  }

  func start(car: String, of model: String) {
    startCarOfCallsCount += 1
    startCarOfReceivedArguments.append((car: car, model: model))
  }

  // MARK: - start

  var startPlaneOfReceivedArguments: [(plane: String, model: String)] = []
  var startPlaneOfLastArgumentReceived: ((plane: String, model: String))? {
    return startPlaneOfReceivedArguments.last
  }

  var startPlaneOfCallsCount = 0
  var startPlaneOfWasCalled: Bool {
    return startPlaneOfCallsCount > 0
  }

  func start(plane: String, of model: String) {
    startPlaneOfCallsCount += 1
    startPlaneOfReceivedArguments.append((plane: plane, model: model))
  }
}

// ======================== ThrowableProtocol ========================

class ThrowableProtocolMock: ThrowableProtocol {

  // MARK: - doOrThrow

  var doOrThrowThrowableError: Error?
  var doOrThrowReturnValue: String!
  var doOrThrowCallsCount = 0
  var doOrThrowWasCalled: Bool {
    return doOrThrowCallsCount > 0
  }

  func doOrThrow() throws -> String {
    if let error = doOrThrowThrowableError {
      throw error
    }
    doOrThrowCallsCount += 1
    return doOrThrowReturnValue
  }

  // MARK: - doOrThrowVoid

  var doOrThrowVoidThrowableError: Error?
  var doOrThrowVoidCallsCount = 0
  var doOrThrowVoidWasCalled: Bool {
    return doOrThrowVoidCallsCount > 0
  }

  func doOrThrowVoid() throws {
    if let error = doOrThrowVoidThrowableError {
      throw error
    }
    doOrThrowVoidCallsCount += 1
  }
}

// ======================== VariablesProtocol ========================

class VariablesProtocolMock: VariablesProtocol {
  var company: String?
  var setNameParam: String?
  var name: String = String() {
    didSet {
      setNameParam = name
    }
  }

  var setAgeParam: Int?
  var age: Int = Int() {
    didSet {
      setAgeParam = age
    }
  }

  var kids: [String] = []
  var universityMarks: [String: Int] = [:]
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
