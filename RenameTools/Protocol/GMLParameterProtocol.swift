//
//  GMLParameterProtocol.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

protocol GMLParameterProtocol: NSObjectProtocol {
    
    /// 参数名
//    var name: String? {get}
    /// 参数组装之后的文本
    var text: String {get}
    
    /// 是否包含传入的类名
    func isInclude(className: String) -> Bool
    
}

protocol GMLReturnProtocol: NSObjectProtocol {
    var returnType: String {get}
}
