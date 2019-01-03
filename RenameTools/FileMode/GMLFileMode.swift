//
//  GMLFileMode.swift
//  GMLRenameFile
//
//  Created by GML on 2019/1/1.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

/// 文件类型
class GMLFileMode: NSObject, GMLFileProtocol {
    private(set) var filePath: String
    /// 存储的类
    fileprivate var classSet : NSHashTable<GMLOCClassMode>
    /// 关联的的文件列表
    fileprivate var importFileSet : NSHashTable<GMLFileMode>
    
    init(filePath: String) {
        self.filePath = filePath
        classSet = NSHashTable.init(options: .weakMemory)
        importFileSet = NSHashTable.init(options: .weakMemory)
        super.init()
    }
}
