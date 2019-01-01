//
//  GMLClassMode.swift
//  GMLRenameFile
//
//  Created by GML on 2018/12/31.
//  Copyright © 2018 GML. All rights reserved.
//

import Cocoa

class GMLClassMode: NSObject {
    
    let mClassName : String
    
    fileprivate var relationFileSet : NSHashTable<GMLFileMode> = {
        return NSHashTable.init(options: .weakMemory)
    }()
    
    init(className: String) {
        mClassName = className
        super.init()
    }
}


// MARK: - 类关联的文件
extension GMLClassMode {
    
    var relationFileList : NSHashTable<GMLFileMode> {
        return relationFileSet
    }
    
    func add(relationFileMode: GMLFileMode) {
        relationFileSet.add(relationFileMode)
    }
    func remove(relationFileMode: GMLFileMode) {
        relationFileSet.remove(relationFileMode)
    }
}

extension GMLClassMode {
    
}
