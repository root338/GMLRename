//
//  GMLBlockParameterMode.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

class GMLBlockParameterMode: NSObject, GMLParameterProtocol {
    
    var text: String {
        return ""
    }
    
    func isInclude(className: String) -> Bool {
        return false
    }
}
