//
//  GMLFileLoaderService.swift
//  GMLRenameFile
//
//  Created by GML on 2019/1/2.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

enum GMLFileLoaderEror : Error {
    case notFound
    case notFile
}

/// 加载文件
class GMLFileLoaderService: NSObject {
    static let `default` = GMLFileLoaderService.init()
    
    let fileManager = FileManager.default
    
    func fileExists(atPath filePath: String) -> Bool {
        return fileManager.fileExists(atPath:filePath)
    }
    
    func syncLoad(atPath filePath: String) throws -> String {
        let fileContent = try String(contentsOfFile: filePath)
        return fileContent
    }
    
//    func asyncLoad(filePath: String, completion: (String, Error?) -> Void) {
//
//    }
}
