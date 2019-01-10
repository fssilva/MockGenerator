//
//  MockTests.swift
//  MockGeneratorTests
//
//  Created by Felipe de Sousa Silva on 20.07.18.
//  Copyright © 2018 com.fsousasilva. All rights reserved.
//

import Nimble
import XCTest

class MockTests: XCTestCase {
  func check(template name: String) {
    let bundle = Bundle(for: type(of: self))
    guard let generatedFilePath = bundle.path(forResource: "\(name).generated", ofType: "swift") else {
      fatalError("Template \(name) can not be checked as the generated file is not presented in the bundle")
    }
    guard let expectedFilePath = bundle.path(forResource: name, ofType: "expected") else {
      fatalError("Template \(name) can not be checked as the expected file is not presented in the bundle")
    }
    guard let generatedFileString = try? String(contentsOfFile: generatedFilePath) else {
      fatalError("Template \(name) can not be checked as the generated file can not be read")
    }
    guard let expectedFileString = try? String(contentsOfFile: expectedFilePath) else {
      fatalError("Template \(name) can not be checked as the expected file can not be read")
    }

    let emptyLinesFilter: (String) -> Bool = { line in !line.isEmpty }
    let commentLinesFilter: (String) -> Bool = { line in !line.hasPrefix("//") }
    let generatedFileLines = generatedFileString.components(separatedBy: .newlines).filter(emptyLinesFilter)
    let generatedFileFilteredLines = generatedFileLines.filter(emptyLinesFilter).filter(commentLinesFilter)
    let expectedFileLines = expectedFileString.components(separatedBy: .newlines)
    let expectedFileFilteredLines = expectedFileLines.filter(emptyLinesFilter).filter(commentLinesFilter)

    expect(generatedFileFilteredLines).to(equal(expectedFileFilteredLines))
  }

  func testMockExpectation() {
    check(template: "AutoMockable")
  }
}
