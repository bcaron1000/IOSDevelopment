//
//  ModelDataManager.swift
//  Assignment3-BryanCaron
//
//  Created by Bryan Caron on 2021-07-07.
//

import Foundation

class ModelDataManager {
    
    private var models: [Model] = []

    init(fileName: String) {
        guard let plistUrl = Bundle.main.url(forResource: fileName, withExtension: "plist"),
              let items = NSArray(contentsOf: plistUrl),
              let arrayOfDict = items as? [[String:AnyObject]]
              else {
            return
        }
    
        for currentDictionary in arrayOfDict {
            let currentModels = Model(dict: currentDictionary)
            models.append(currentModels)
        }
        func model(at index: IndexPath) -> Model {
            return models[index.row]
        }
}
    func model(at index: IndexPath) -> Model {
        return models[index.row]
    }
    func numberOfModels() -> Int {
        return models.count
    }
}

