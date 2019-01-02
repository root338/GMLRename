//
//  GMLOCEnumMode.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/2.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

class GMLOCEnumMode: NSObject {

    let mEnumName : String
    let mEnumMemberNameSet : Set<String>
    
    init(name: String, memberSet: Set<String>) {
        mEnumName = name
        mEnumMemberNameSet = memberSet
        super.init()
    }
}
