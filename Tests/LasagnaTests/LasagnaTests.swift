import XCTest

@testable import Lasagna

class TaskExpectedMinutesInOvenTests: XCTestCase {
  func testExpectedMinutes() {
    XCTAssertEqual(expectedMinutesInOven, 40)
  }
}

class TaskRemainingMinutesInOven: XCTestCase {
  func testRemainingMinutes() throws {
    
    XCTAssertEqual(remainingMinutesInOven(elapsedMinutes: 13), 27)
  }

  func testRemainingMinutesWhenDone() throws {
    
    XCTAssertEqual(remainingMinutesInOven(elapsedMinutes: 40), 0)
  }

  func testRemainingMinutesWhenLessThanOne() throws {
    
    XCTAssertEqual(remainingMinutesInOven(elapsedMinutes: 39), 1)
  }
}

class TaskPreparationTimeInMinutes: XCTestCase {
  func testPreparationMinutes() throws {
    
    XCTAssertEqual(preparationTimeInMinutes(layers: 6), 12)
  }

  func testPreparationMinutesForOneLayer() throws {
    
    XCTAssertEqual(preparationTimeInMinutes(layers: 1), 2)
  }

  func testPreparationMinutesForZeroLayers() throws {
    
    XCTAssertEqual(preparationTimeInMinutes(layers: 0), 0)
  }
}

class TaskTotalTimeInMinutes: XCTestCase {
  func testTotalMinutes() throws {
    
    XCTAssertEqual(totalTimeInMinutes(layers: 1, elapsedMinutes: 30), 32)
  }

  func testTotalMinutesWhenDone() throws {
    
    XCTAssertEqual(totalTimeInMinutes(layers: 2, elapsedMinutes: 25), 29)
  }

  func testTotalMinutesWhenLessThanOne() throws {
    
    XCTAssertEqual(totalTimeInMinutes(layers: 4, elapsedMinutes: 8), 16)
  }
}
