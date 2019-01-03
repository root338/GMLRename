//
//  GMLFileParserService.swift
//  GMLRenameFile
//
//  Created by GML on 2019/1/2.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

/// 对文件特定部分进行解析
class GMLFileParserService: NSObject {
    
    static let `default` = GMLFileParserService.init()
    
    let parserClassHelper = GMLParserClassHelper.init()
}

// MARK: - 解析类
extension GMLFileParserService {
    
    func parserClass(fileContent: String) -> [GMLOCClassMode]? {
        
        guard parserClassHelper.isExistsClass(content: fileContent) else {
            return nil
        }
        
    }
}

// MARK: - 解析 enum
extension GMLFileParserService {
    func parserEnum(fileContent: String) {
        
    }
}

// MARK: - 解析定义常量
extension GMLFileParserService {
    func parserConstant(fileContent: String) {
        
    }
}
