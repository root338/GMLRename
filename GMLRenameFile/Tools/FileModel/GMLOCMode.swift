//
//  GMLOCMode.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/2.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

enum GMLOCUnit : String {
    case h = "h"
    case m = "m"
    case `enum` = "enum"
    case staticConstant = "staticConstant"
    case alias = "alias"
}
/**
 * OC 文件模型
 */
class GMLOCMode: NSObject {
    
    let mHFilePath : String
    let mMFilePath : String?
    
    let classSet = GMLOCClassSet.init()
    let enumSet = GMLOCEnumSetMode.init()
    
    init(hFilePath: String, mFilePath: String?) {
        mHFilePath = hFilePath
        mMFilePath = mFilePath
        super.init()
    }
}
