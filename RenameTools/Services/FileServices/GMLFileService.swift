//
//  GMLFileService.swift
//  GMLRenameFile
//
//  Created by GML on 2019/1/2.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

protocol GMLFileServiceDelegate : NSObjectProtocol {
    func service(_ service: GMLFileService, fileMode: GMLFileMode)
    func service(_ service: GMLFileService, classMode: GMLOCClassMode)
    func service(_ service: GMLFileService, enumMode: GMLEnumMode)
    func service(_ service: GMLFileService, constantMode: GMLConstantMode)
}

/// 对文件进行解析
class GMLFileService: NSObject {
    
    weak var delegate : GMLFileServiceDelegate?
    
    private var fileLoaderService : GMLFileLoaderService {
        return GMLFileLoaderService.default
    }
    
    func input(filePath: String) throws {
        
        let fileMode = try generateFileMode(filePath: filePath)
        delegate?.service(self, fileMode: fileMode)
        
        let fileContent = try GMLFileLoaderService.default.syncLoad(atPath:filePath)
        
        
    }
    
    func generateFileMode(filePath: String) throws -> GMLFileMode {
        guard fileLoaderService.fileExists(atPath: filePath) else {
            throw GMLFileError.notFile
        }
        return GMLFileMode.init(filePath: filePath)
    }
}
