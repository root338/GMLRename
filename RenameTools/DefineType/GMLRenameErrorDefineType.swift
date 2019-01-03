//
//  GMLRenameErrorDefineType.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

enum GMLFileError : Error {
    /// 没有找到路径文件
    case notFound
    /// 不是文件
    case notFile
}
