//
//  GMLClassService.swift
//  GMLRenameFile
//
//  Created by GML on 2018/12/31.
//  Copyright © 2018 GML. All rights reserved.
//

import Cocoa

class GMLClassService: NSObject {
    
    let targetClassName : String
    let fileName : String
    let filePath : String
    
    let propertyService  = GMLPropertyService.init()
    let methodSerVice = GMLMethodService.init()
    
    init(className: String, fileName: String, filePath: String) {
        self.targetClassName = className;
        self.fileName = fileName
        self.filePath = filePath
        super.init()
    }
    
    
}
