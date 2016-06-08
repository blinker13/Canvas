
import XCTest
import Canvas

class ColorTests: XCTestCase {

	func test_initGray() {
		let subject = Color(white:0.471)
		XCTAssertEqualWithAccuracy(subject.red, 0.471, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.green, 0.471, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.blue, 0.471, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.alpha, 1.0, accuracy:UnitTests.accuracy)
	}

	func test_initRGB() {
		let subject = Color(red:0.1, green:0.3, blue:0.5)
		XCTAssertEqualWithAccuracy(subject.red, 0.1, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.green, 0.3, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.blue, 0.5, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.alpha, 1.0, accuracy:UnitTests.accuracy)
	}

	// MARK: - Constants

	func test_black() {
		let subject = Color.black
		XCTAssertEqualWithAccuracy(subject.red, 0.0, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.green, 0.0, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.blue, 0.0, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.alpha, 1.0, accuracy:UnitTests.accuracy)
	}

	func test_darkGray() {
		let subject = Color.darkGray
		XCTAssertEqualWithAccuracy(subject.red, 0.333, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.green, 0.333, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.blue, 0.333, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.alpha, 1.0, accuracy:UnitTests.accuracy)
	}

	func test_gray() {
		let subject = Color.gray
		XCTAssertEqualWithAccuracy(subject.red, 0.5, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.green, 0.5, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.blue, 0.5, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.alpha, 1.0, accuracy:UnitTests.accuracy)
	}

	func test_lightGray() {
		let subject = Color.lightGray
		XCTAssertEqualWithAccuracy(subject.red, 0.667, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.green, 0.667, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.blue, 0.667, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.alpha, 1.0, accuracy:UnitTests.accuracy)
	}

	func test_white() {
		let subject = Color.white
		XCTAssertEqualWithAccuracy(subject.red, 1.0, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.green, 1.0, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.blue, 1.0, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.alpha, 1.0, accuracy:UnitTests.accuracy)
	}

	func test_clear() {
		let subject = Color.clear
		XCTAssertEqualWithAccuracy(subject.red, 0.0, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.green, 0.0, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.blue, 0.0, accuracy:UnitTests.accuracy)
		XCTAssertEqualWithAccuracy(subject.alpha, 0.0, accuracy:UnitTests.accuracy)
	}
}