//
//  Years.swift
//  Assignment3-BryanCaron
//
//  Created by Bryan Caron on 2021-07-07.
//

import Foundation

struct Year {
    
    var year: String = ""
    
    
    init(dict: [String: AnyObject]) {
        self.year = dict["year"] as! String
        
     }
}
