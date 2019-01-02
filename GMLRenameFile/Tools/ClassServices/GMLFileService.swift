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
    func service(_ service: GMLFileService, classMode: GMLClassMode)
    func service(_ service: GMLFileService, enumMode: GMLEnumMode)
    func service(_ service: GMLFileService, constantMode: GMLConstantMode)
}

class GMLFileService: NSObject {
    
    func input(filePath: String) {
        
    }
}
