// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all

@testable import MockGenerator

// ======================== TestingPresenter ========================

class TestingPresenterMock: TestingPresenter {

  // MARK: - methodWithSingleParam

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
}
