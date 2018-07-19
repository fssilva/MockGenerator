//
//  TestingPresenter.swift
//  MockGenerator
//
//  Created by Felipe de Sousa Silva on 13.07.18.
//  Copyright © 2018 com.fsousasilva. All rights reserved.
//

import Foundation
import UIKit


class GenericClass<T> {

  var myVariable: T!

}

// sourcery: Mock
protocol TestingPresenter {

  var myVariable: String { get set }

  func simpleMethod()
  func methodWithReturn() -> String
  func methodWithThrow() throws -> String
  func methodWithSingleParam(crvsh: String) -> Bool
  func methodWithSingleOptionalParam(crvsh: String?) -> Bool
  func methodWithMultipleParams(name: String, lastName: String)
  func methodThrowWithParamsAndReturn(param1: String, param2: String) throws -> Bool
  func methodWithScape(completion: @escaping (Bool, Error?) -> Void)

  //sourcery: Generic
  func genericMethod<T>(param: GenericClass<T>, param2: String) -> T
  //sourcery: Generic
  func anotherGenericMethod<T>(param: T) throws -> T
}

// sourcery: Mock
class Test {
  func methodWithSingleParam(crvsh: String?) -> Bool {
    return true
  }

  func methodWithSingleOptionalParam(crvsh: String?) -> Bool {
    return false
  }

  func methodWithMultipleParams(name: String, lastName: String) {

  }

  func methodWithScape(completion: @escaping (Bool, Error?) -> Void) {

  }
}
