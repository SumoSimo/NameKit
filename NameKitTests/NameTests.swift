//
//  NameTests.swift
//  NameKit
//
//  Created by Simon Tsai on 11/14/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

@testable import NameKit

import XCTest

class NameTests: XCTestCase {
  
  func testEmptyNameHasNoFirstName() {
    
    let name = Name("")
    
    XCTAssertEqual(name.firstName, .none)
    
  }
  
  func testFullNameHasCorrectFirstName() {
    
    let name = Name("Joe Schmo")
    
    XCTAssertEqual(name.firstName, "Joe")
    
  }
  
  func testOneWordNameHasCorrectFirstName() {
    
    let name = Name("Joe")
    
    XCTAssertEqual(name.firstName, "Joe")
    
  }
  
  func testEmptyNameHasNoLastName() {
    
    let name = Name("")
    
    XCTAssertEqual(name.lastName, .none)
    
  }
  
  func testOneWordNameHasNoLastName() {
    
    let name = Name("Joe")
    
    XCTAssertEqual(name.lastName, .none)
    
  }
  
  func testFullNameHasCorrectLastName() {
    
    let name = Name("Joe Schmo")
    
    XCTAssertEqual(name.lastName, "Schmo")
    
  }
  
  func testEmptyNameHasNoMiddleName() {
    
    let name = Name("")
    
    XCTAssertEqual(name.middleName, .none)
    
  }
  
  func testOneWordNameHasNoMiddleName() {
    
    let name = Name("Joe")
    
    XCTAssertEqual(name.middleName, .none)
    
  }
  
  func testTwoWordNameHasNoMiddleName() {
    
    let name = Name("Joe Schmo")
    
    XCTAssertEqual(name.middleName, .none)
    
  }
  
  func testThreeWordNameHasCorrectMiddleName() {
    
    let name = Name("Joe Whoa Schmo")
    
    XCTAssertEqual(name.middleName, "Whoa")
    
  }
  
  func testFourWordNameHasCorrectMiddleName() {
    
    let name = Name("Joe Whoa Toe Schmo")
    
    XCTAssertEqual(name.middleName, "Whoa Toe")
    
  }
  
  func testFiveWordNameHasCorrectMiddleName() {
    
    let name = Name("Joe Whoa Toe Foe Schmo")
    
    XCTAssertEqual(name.middleName, "Whoa Toe Foe")
    
  }
  
  func testFullNameIsCorrect() {
    
    func testFiveWordNameHasCorrectMiddleName() {
      
      let name = Name("Joe Whoa Toe Foe Schmo")
      
      XCTAssertEqual(name.fullName, "Joe Whoa Toe Foe Schmo")
      
    }
    
  }
  
}
