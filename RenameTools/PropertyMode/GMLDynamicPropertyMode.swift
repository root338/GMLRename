//
//  GMLDynamicPropertyMode.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

class GMLDynamicPropertyMode: NSObject, GMLPropertyProtocol {
    
    private (set) var memberName: GMLParameterProtocol
    var text : String {
        return ""
    }
    init(memberName: GMLParameterProtocol) {
        self.memberName = memberName
        super.init()
    }
}
