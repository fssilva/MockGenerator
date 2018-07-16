//
//  TestingPresenter.swift
//  MockGenerator
//
//  Created by Felipe de Sousa Silva on 13.07.18.
//  Copyright © 2018 com.fsousasilva. All rights reserved.
//

import Foundation

// sourcery: AutoMockable
protocol TestingPresenter {
  var niceVariable: String { get }
  var niceVariable2: Int { get }

  func emptyMethod()
  func methodWithThrow() throws -> String
  func methodWithReturn() -> String
  func methodWithSingleParamReturn(crvsh: String)
  func methodWithMultipleParams(name: String, lastName: String)
  func methodWithParamsAndReturn(name: String, lastName: String) -> String
}
