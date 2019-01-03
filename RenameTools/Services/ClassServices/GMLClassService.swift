//
//  GMLClassService.swift
//  GMLRenameFile
//
//  Created by GML on 2018/12/31.
//  Copyright © 2018 GML. All rights reserved.
//

import Cocoa

protocol GMLClassServiceDelegate : NSObjectProtocol {
    func service(_ service: GMLClassService, classMode: GMLOCClassMode)
}

class GMLClassService: NSObject {
    
    let propertyService  = GMLPropertyService.init()
    let methodSerVice = GMLMethodService.init()
    
    
}
