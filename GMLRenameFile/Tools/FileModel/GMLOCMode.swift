//
//  GMLOCMode.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/2.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa
/**
 * OC 文件模型
 */
class GMLOCMode: NSObject {
    
    
    let mHFilePath : String
    let mMFilePath : String?
    
    init(hFilePath: String, mFilePath: String?) {
        mHFilePath = hFilePath
        mMFilePath = mFilePath
        super.init()
    }
}
