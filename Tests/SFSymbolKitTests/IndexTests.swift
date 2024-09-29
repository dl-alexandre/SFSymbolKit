//
//  IndexTests.swift
//  SFSymbolKit
//
//  Created by Dalton Alexandre on 9/29/24.
//

import XCTest
@testable import SFSymbolKit
import CoreSpotlight
import UniformTypeIdentifiers

class AddIconToIndexTests: XCTestCase {

    func testAddIconToIndex() {
        let mockIndex = CSSearchableIndex(name: "testDomain", protectionClass: .complete)
        let attributeSet = CSSearchableItemAttributeSet(contentType: .text)
        attributeSet.title = "TestItem"
        let item = CSSearchableItem(
            uniqueIdentifier: "TestItem",
            domainIdentifier: "TestDomain",
            attributeSet: attributeSet
        )

        mockIndex.indexSearchableItems([item]) { error in
            XCTAssertNil(error, "Error indexing item: \(String(describing: error))")
        }

        // Since there's no direct way to retrieve indexed items, you might need to mock the indexing process
        // or verify through other means that the item was indexed correctly.
    }
}

class RemoveIconFromIndexTests: XCTestCase {

    func testRemoveIconFromIndex() {
        let mockIndex = CSSearchableIndex(name: "testDomain", protectionClass: .complete)
        let item = "TestItem"
        let domainID = "TestDomain"

        // Add the item to the index first
        let attributeSet = CSSearchableItemAttributeSet(contentType: .text)
        attributeSet.title = item
        let searchableItem = CSSearchableItem(
            uniqueIdentifier: item,
            domainIdentifier: domainID,
            attributeSet: attributeSet
        )

        let addExpectation = expectation(description: "Item added to index")
        mockIndex.indexSearchableItems([searchableItem]) { error in
            XCTAssertNil(error, "Error indexing item: \(String(describing: error))")
            addExpectation.fulfill()
        }
        wait(for: [addExpectation], timeout: 5.0)

        // Now remove the item from the index
        let removeExpectation = expectation(description: "Item removed from index")
        removeIconFromIndex(item, domainID)

        mockIndex.deleteSearchableItems(withIdentifiers: [item]) { error in
            XCTAssertNil(error, "Error removing item: \(String(describing: error))")
            removeExpectation.fulfill()
        }
        wait(for: [removeExpectation], timeout: 5.0)
    }
}
