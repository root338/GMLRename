//
//  GMLMethodPropertyMode.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

enum GMLPropertyMethodType {
    case set
    case get
}

class GMLMethodPropertyMode: NSObject, GMLPropertyProtocol {
    
    let methodType : GMLPropertyMethodType
    private (set) var memberName: GMLParameterProtocol
    let method: GMLMethodMode
    
    var text : String {
        return ""
    }
    
    init(methodType: GMLPropertyMethodType, memberName: GMLParameterProtocol, method: GMLMethodMode) {
        self.methodType = methodType
        self.memberName = memberName
        self.method = method
        super.init()
    }
}
