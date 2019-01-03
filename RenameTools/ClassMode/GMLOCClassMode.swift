//
//  GMLOCClassMode.swift
//  GMLRenameFile
//
//  Created by GML on 2018/12/31.
//  Copyright © 2018 GML. All rights reserved.
//

import Cocoa

class GMLOCClassMode: NSObject {
    
    let mClassName : String
    let mFilePath : String
    
    init(className: String, filePath: String) {
        mClassName = className
        mFilePath = filePath
        super.init()
    }
}


//// MARK: - 类关联的文件
//extension GMLOCClassMode {
//
//    var relationFileList : NSHashTable<GMLFileMode> {
//        return relationFileSet
//    }
//
//    func add(relationFileMode: GMLFileMode) {
//        relationFileSet.add(relationFileMode)
//    }
//    func remove(relationFileMode: GMLFileMode) {
//        relationFileSet.remove(relationFileMode)
//    }
//}
//
//extension GMLClassMode {
//
//}
