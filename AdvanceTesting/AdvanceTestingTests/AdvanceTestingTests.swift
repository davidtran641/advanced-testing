//
//  AdvanceTestingTests.swift
//  AdvanceTestingTests
//
//  Created by Cong Duc, David Tran on 2/5/19.
//  Copyright © 2019 David Tran. All rights reserved.
//

import XCTest
@testable import AdvanceTesting

class AdvanceTestingTests: XCTestCase {

  override func setUp() {

  }

  override func tearDown() {

  }

  func testLoggingThenSuccess() {
    XCTAssertTrue(true)
  }

  func testLoggingThenFailed() {
    XCTAssertTrue(false, "It fail as my purpose")
  }

}

