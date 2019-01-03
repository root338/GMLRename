//
//  GMLMethodSetMode.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

class GMLMethodSetMode: NSObject {
    
    private(set) var methodSet = Set<GMLMethodMode>()
    
    func add(method: GMLMethodMode) {
        methodSet.update(with: method)
    }
}
