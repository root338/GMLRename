//
//  GMLSynthesizePropertyMode.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

class GMLSynthesizePropertyMode: NSObject, GMLPropertyProtocol {
    
    private (set) var memberName: GMLParameterProtocol
    let synthesizeName: String
    
    var text : String {
        return ""
    }
    
    init(memberName: GMLParameterProtocol, synthesizeName: String) {
        self.memberName = memberName
        self.synthesizeName = synthesizeName
        super.init()
    }
}
