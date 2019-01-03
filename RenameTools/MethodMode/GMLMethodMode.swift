//
//  GMLMethodMode.swift
//  GMLRenameFile
//
//  Created by GML on 2018/12/31.
//  Copyright © 2018 GML. All rights reserved.
//

import Cocoa

class GMLMethodMode: NSObject {
    
    let returnValue: GMLParameterProtocol
    let parametersList: [GMLParameterProtocol]
    
    init(parameters: [GMLParameterProtocol], returnValue: GMLParameterProtocol) {
        self.returnValue = returnValue
        self.parametersList = parameters
        super.init()
    }
}
