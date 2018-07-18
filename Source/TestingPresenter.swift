//
//  TestingPresenter.swift
//  MockGenerator
//
//  Created by Felipe de Sousa Silva on 13.07.18.
//  Copyright © 2018 com.fsousasilva. All rights reserved.
//

import Foundation
import UIKit


protocol TestingPresenter {

  init(param1: String)

  var myVariable: (() -> String) { get }
  var myVariableWithSet: Int? { get set }

  func emptyMethod()
  func methodWithReturn() -> String
  func methodWithThrow() throws -> String
  func methodWithSingleParam(withParam crvsh: String) -> Bool
  func methodWithMultipleParams(name: String, lastName: String)
  func methodThrowWithParamsAndReturn(param1: String, param2: String) throws -> Bool
  func methodWithScape(completion: @escaping (Bool, Error?) -> Void)
}

// sourcery: Mock
class Testing {

  let param: String
  var param2: String?

  init(param1: String) {
    self.param = param1
  }

  func emptyMethod() {

  }
  func methodWithReturn() -> String {
    return ""
  }

  func methodWithSingleParam(crvsh: String) -> Bool {
    return false
  }

  private func methodPrivate(crvsh: String) -> String {
    return ""
  }
}
