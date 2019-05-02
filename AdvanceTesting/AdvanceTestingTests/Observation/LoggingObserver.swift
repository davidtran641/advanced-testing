//
//  LoggingObserver.swift
//  AdvanceTestingTests
//
//  Created by Cong Duc, David Tran on 2/5/19.
//  Copyright © 2019 David Tran. All rights reserved.
//

import XCTest

class LoggingObserver: NSObject, XCTestObservation {

  override init() {
    super.init()
    let sharedCenter = XCTestObservationCenter.shared
    sharedCenter.addTestObserver(self)
  }

  // MARK: Test observation
  func testBundleWillStart(_ testBundle: Bundle) {
    print(">> Hey, will start bundle \(testBundle)")
  }

  func testBundleDidFinish(_ testBundle: Bundle) {
    print(">> Bye, test bundle \(testBundle)")
  }

  func testSuiteWillStart(_ testSuite: XCTestSuite) {
    print(">> Hi there, start suite \(testSuite)")
  }

  func testSuiteDidFinish(_ testSuite: XCTestSuite) {
    print(">> Bye bye, suite \(testSuite)")
  }

  func testCaseWillStart(_ testCase: XCTestCase) {
    print(">> Hello, start with case \(testCase)")
  }

  func testCaseDidFinish(_ testCase: XCTestCase) {
    print(">> Yolo, finish case \(testCase)")
  }

  func testCase(_ testCase: XCTestCase, didFailWithDescription description: String, inFile filePath: String?, atLine lineNumber: Int) {
    print(">> OMG!!! This case has failed \(testCase), reason is: \(description), file: \(filePath ?? ""), line: \(lineNumber)")
  }
  
}
