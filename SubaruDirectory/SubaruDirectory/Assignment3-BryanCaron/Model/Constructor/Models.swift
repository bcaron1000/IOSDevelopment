//
//  Models.swift
//  Assignment3-BryanCaron
//
//  Created by Bryan Caron on 2021-07-07.
//

import Foundation

struct Model {
    
    var model: String = ""
    
    
    init(dict: [String: AnyObject]) {
        self.model = dict["model"] as! String
        
     }
}
