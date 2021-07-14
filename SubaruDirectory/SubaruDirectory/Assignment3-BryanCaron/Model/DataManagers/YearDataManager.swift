//
//  YearDataManager.swift
//  Assignment3-BryanCaron
//
//  Created by Bryan Caron on 2021-07-07.
//

import Foundation

class YearDataManager {
    
    private var years: [Year] = []

    init() {
        guard let plistUrl = Bundle.main.url(forResource: "SubaruYears", withExtension: "plist"),
              let items = NSArray(contentsOf: plistUrl),
              let arrayOfDict = items as? [[String:AnyObject]]
              else {
            return
        }
    
        for currentDictionary in arrayOfDict {
            let currentYears = Year(dict: currentDictionary)
            years.append(currentYears)
        }
        func year(at index: IndexPath) -> Year {
            return years[index.row]
        }
}
    func year(at index: IndexPath) -> Year {
        return years[index.row]
    }
    func numberOfYears() -> Int {
        return years.count
    }
}
