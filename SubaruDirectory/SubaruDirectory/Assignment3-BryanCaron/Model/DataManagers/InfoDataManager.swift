//
//  InfoDataManager.swift
//  Assignment3-BryanCaron
//
//  Created by Bryan Caron on 2021-07-07.
//

import Foundation

class InfoDataManager {
    
    private var details: [Detail] = []

    init(fileName: String) {
        guard let plistUrl = Bundle.main.url(forResource: fileName, withExtension: "plist"),
              let items = NSArray(contentsOf: plistUrl),
              let arrayOfDict = items as? [[String:AnyObject]]
              else {
            return
        }
    
        for currentDictionary in arrayOfDict {
            let currentDetails = Detail(dict: currentDictionary)
            details.append(currentDetails)
        }
        func detail(at index: IndexPath) -> Detail {
            return details[index.row]
        }
}
    func detail(at index: IndexPath) -> Detail {
        return details[index.row]
    }
    func numberOfDetails() -> Int {
        return details.count
    }
}

