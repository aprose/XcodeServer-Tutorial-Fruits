
import XCTest

class FruitsUITests: XCTestCase {
	override func setUpWithError() throws {
		continueAfterFailure = false
	}

	func testWeHaveABananaCell() throws {
		let app = XCUIApplication()
		app.launch()

		let cells = app.cells.allElementsBoundByIndex
		let row = cells.filter { $0.label.contains("🍌" ) }
		XCTAssertNotNil(row)
	}

	func testWeHaveACherryCell() throws {
		let app = XCUIApplication()
		app.launch()

		let cells = app.cells.allElementsBoundByIndex
		let row = cells.filter { $0.label.contains("🍒" ) }
		XCTAssertFalse(row.isEmpty)
	}
}
