//
//  GMLInterfacePropertyMode.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

enum GMLPropertyType : String {
    case nullable = "nullable"
    case nonatomic = "nonatomic"
    case assgin = "assgin"
    case strong = "strong"
    case copy = "copy"
    case weak = "weak"
    case readonly = "readonly"
    case readwrite = "readwrite"
}

class GMLInterfacePropertyMode: NSObject, GMLPropertyProtocol {
    
    private (set) var types: [String]?
    private (set) var memberName: GMLParameterProtocol
    
    var text : String {
        return ""
    }
    
    init(types: [String]?, memberName: GMLParameterProtocol) {
        
        self.types = types
        self.memberName = memberName
        super.init()
    }
}
