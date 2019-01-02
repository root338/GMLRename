//
//  GMLFileMode.swift
//  GMLRenameFile
//
//  Created by GML on 2019/1/1.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

enum GMLFileType : String {
    case h = "h"
    case m = "m"
}

/// 文件类型
class GMLFileMode: NSObject {
    let fileName : String
    let filePath : String
    let fileType : GMLFileType?
    /// 存储的类
    fileprivate var relationClassSet = [NSHashTable<GMLClassMode>]()
    /// 关联的的文件列表
    fileprivate var relationFileSet = [NSHashTable<GMLFileMode>]()
    
    init(filePath: String) {
        self.filePath = filePath
        let tmpFilePath = filePath as NSString
        let pathExtension = tmpFilePath.pathExtension
        fileType = GMLFileType(rawValue:  pathExtension)
        fileName = (tmpFilePath.deletingPathExtension as NSString).lastPathComponent
        super.init()
    }
    
}
