//
//  GMLFileLoaderService.swift
//  GMLRenameFile
//
//  Created by GML on 2019/1/2.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

enum GMLFileLoaderEror : Error {
    case notFound,
    case notFile,
}

/// 文件加载器
class GMLFileLoaderService: NSObject {
    static let `default` = GMLFileLoaderService.init()
    
    let fileManager = FileManager.default
    
    func syncLoad(filePath: String) throws -> String {
        guard fileManager.isExecutableFile(atPath: filePath) else {
            throw GMLFileLoaderEror.notFound
        }
        
        let fileContent = try String(contentsOfFile: filePath)
        return fileContent
    }
    
//    func asyncLoad(filePath: String, completion: (String, Error?) -> Void) {
//
//    }
}
