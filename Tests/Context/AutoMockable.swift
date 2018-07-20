//
//  AutoMockable.swift
//  MockGeneratorTests
//
//  Created by Felipe de Sousa Silva on 19.07.18.
//  Copyright © 2018 com.fsousasilva. All rights reserved.
//

import Foundation

// sourcery: Mock
protocol BasicProtocol {
  func loadConfiguration() -> String?
  /// Asks a Duck to quack
  ///
  /// - Parameter times: How many times the Duck will quack
  func save(configuration: String)
}

// sourcery: Mock
protocol InitializationProtocol {
  init(intParameter: Int, stringParameter: String, optionalParameter: String?)
  func start()
  func stop()
}

// sourcery: Mock
protocol VariablesProtocol {
  var company: String? { get set }
  var name: String { get }
  var age: Int { get }
  var kids: [String] { get }
  var universityMarks: [String: Int] { get }
}

// sourcery: Mock
protocol SameShortMethodNamesProtocol {
  func start(car: String, of model: String)
  func start(plane: String, of model: String)
}

// sourcery: Mock
protocol ExtendableProtocol {
  var canReport: Bool { get }
  func report(message: String)
}

// sourcery: Mock
protocol ReservedWordsProtocol {
  func `continue`(with message: String) -> String
}

// sourcery: Mock
protocol ThrowableProtocol {
  func doOrThrow() throws -> String
  func doOrThrowVoid() throws
}

// sourcery: Mock
protocol CurrencyPresenter {
  func showSourceCurrency(_ currency: String)
}

extension ExtendableProtocol {
  var canReport: Bool { return true }

  func report(message: String = "Test") {
    print(message)
  }
}

// sourcery: Mock
protocol ClosureProtocol {
  func setClosure(_ closure: @escaping () -> Void)
}

//sourcery: Mock
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

