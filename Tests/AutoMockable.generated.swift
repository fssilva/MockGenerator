// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all

import Foundation
@testable import MockGenerator
import UIKit

// ======================== Testing ========================

class TestingMock: Testing {

  // MARK: - emptyMethod

  var emptyMethodCallsCount = 0
  var emptyMethodWasCalled: Bool {
    return emptyMethodCallsCount > 0
  }

  override func emptyMethod() {
    emptyMethodCallsCount += 1
  }

  // MARK: - methodWithReturn

  var methodWithReturnReturnValue: String!
  var methodWithReturnCallsCount = 0
  var methodWithReturnWasCalled: Bool {
    return methodWithReturnCallsCount > 0
  }

  override func methodWithReturn() -> String {
    methodWithReturnCallsCount += 1
    return methodWithReturnReturnValue
  }

  // MARK: - methodWithSingleParam

  var methodWithSingleParamCrvshReceivedCrvsh: String?
  var methodWithSingleParamCrvshReturnValue: Bool!
  var methodWithSingleParamCrvshCallsCount = 0
  var methodWithSingleParamCrvshWasCalled: Bool {
    return methodWithSingleParamCrvshCallsCount > 0
  }

  override func methodWithSingleParam(crvsh: String) -> Bool {
    methodWithSingleParamCrvshCallsCount += 1
    methodWithSingleParamCrvshReceivedCrvsh = crvsh
    return methodWithSingleParamCrvshReturnValue
  }
}
