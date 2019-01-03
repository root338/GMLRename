//
//  GMLFileProtocol.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Foundation

enum GMLFileType : String {
    case h = "h"
    case m = "m"
    case mm = "mm"
    case swift = "swift"
    case c = "c"
}

protocol GMLFileProtocol {
    var filePath : String {get}
    var fileName : String {get}
    var fileType : GMLFileType? {get}
    var fileExtension : String {get}
    var folderPath : String {get}
}

extension GMLFileProtocol {
    var fileName : String {
        return filePath.gml_lastPathName
    }
    var fileType : GMLFileType? {
        return GMLFileType.init(rawValue: filePath.gml_pathExtension)
    }
    var fileExtension : String {
        return filePath.gml_pathExtension
    }
    var folderPath : String {
        return filePath.gml_deletingLastPathComponent
    }
}
