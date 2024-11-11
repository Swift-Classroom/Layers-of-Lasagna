import Testing
@testable import Lasagna

struct TaskExpectedMinutesInOvenTestsTests {
    @Test func testExpectedMinutesTest() {
        #expect(expectedMinutesInOven == 40)
    }
}

struct TaskRemainingMinutesInOvenTests {
    @Test func testRemainingMinutesTest() async throws {
        #expect(remainingMinutesInOven(elapsedMinutes: 13) == 27)
    }
    
    @Test func testRemainingMinutesWhenDoneTest() async throws {
        #expect(remainingMinutesInOven(elapsedMinutes: 40) == 0)
    }
    
    @Test func testRemainingMinutesWhenLessThanOneTest() async throws {
        #expect(remainingMinutesInOven(elapsedMinutes: 39) == 1)
    }
}

struct TaskPreparationTimeInMinutesTests {
    @Test func testPreparationMinutesTest() async throws {
        #expect(preparationTimeInMinutes(layers: 6) == 12)
    }
    
    @Test func testPreparationMinutesForOneLayerTest() async throws {
        #expect(preparationTimeInMinutes(layers: 1) == 2)
    }
    
    @Test func testPreparationMinutesForZeroLayersTest() async throws {
        #expect(preparationTimeInMinutes(layers: 0) == 0)
    }
}

struct TaskTotalTimeInMinutesTests {
    @Test func testTotalMinutesTest() async throws {
        #expect(totalTimeInMinutes(layers: 1, elapsedMinutes: 30) == 32)
    }
    
    @Test func testTotalMinutesWhenDoneTest() async throws {
        #expect(totalTimeInMinutes(layers: 2, elapsedMinutes: 25) == 29)
    }
    
    @Test func testTotalMinutesWhenLessThanOneTest() async throws {
        #expect(totalTimeInMinutes(layers: 4, elapsedMinutes: 8) == 16)
    }
}
