import XCTest
@testable import SFSymbolKit

final class SFSymbolKitTests: XCTestCase {
        /// Tests the `decodePList` function to ensure it correctly decodes the plist into an array of symbols.
    func testDecodePList() {
            // Given
            /// The expected number of symbols that should be present in the plist
        let expectedFivePointOneSymbolsCount = 5648 /// SF Symbols 5.1
        
            // When
            /// The actual array of symbols returned by the `decodePList` function.
        let symbols = decodePList()
        
            // Then
            /// Asserts that the symbols array is not empty.
        XCTAssertFalse(symbols.isEmpty, "The symbols array should not be empty.")
            /// Asserts that the symbols array contains the expected number of symbols.
        XCTAssertEqual(symbols.count, expectedFivePointOneSymbolsCount, "The symbols array should contain \(expectedFivePointOneSymbolsCount) symbols.")
    }

}
