//
//  Detail.swift
//  Assignment3-BryanCaron
//
//  Created by Bryan Caron on 2021-07-07.
//

import Foundation

struct Detail {
    
    var detail: String = ""
    var engineSize: String = ""

    
    init(dict: [String: AnyObject]) {
        self.detail = dict["detail"] as! String
        self.engineSize = dict["engineSize"] as! String
     }
}
