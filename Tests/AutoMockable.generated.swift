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
}
