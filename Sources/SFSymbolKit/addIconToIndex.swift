//
//  addIconToIndex.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import CoreSpotlight

public func addIconToIndex(_ item: String, _ domainID: String) {
    let attributeSet = CSSearchableItemAttributeSet(contentType: UTType.text)
    attributeSet.title = item

    let indexedItem = CSSearchableItem(uniqueIdentifier: item, domainIdentifier: domainID, attributeSet: attributeSet)
    let secureIndex = CSSearchableIndex(name: domainID, protectionClass: .complete)

    secureIndex.indexSearchableItems([indexedItem]) { error in
        if let error = error {
            print("Error indexing item: \(error.localizedDescription)")
        } else {
            print("\(item) indexed successfully.")
        }
    }
}
