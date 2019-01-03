//
//  GMLParameterMode.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

class GMLParameterMode: NSObject, GMLParameterProtocol {
    
    private(set) var type: String
    private(set) var typeSuffixText: String?
    private(set) var name: String?
    
    var text: String {
        var mText = type
        if typeSuffixText != nil && typeSuffixText!.count > 0 {
            mText += " \(typeSuffixText!)"
        }
        if name != nil && name!.count > 0 {
            mText += " \(name!)"
        }
        return mText
    }
    
    init(type: String, typeSuffixText: String?, name: String?) {
        self.type = type
        self.typeSuffixText = typeSuffixText
        self.name = name
        super.init()
    }
    
    func isInclude(className: String) -> Bool {
        return className.elementsEqual(self.type)
    }
}
