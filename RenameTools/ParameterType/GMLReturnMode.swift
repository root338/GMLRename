//
//  GMLReturnMode.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

class GMLReturnMode: NSObject, GMLParameterProtocol {

    private(set) var type: String
    private(set) var typeSuffixText: String?
    
    var text: String {
        var mText = type
        if typeSuffixText != nil && typeSuffixText!.count > 0 {
            mText += " \(typeSuffixText!)"
        }
        return mText
    }
    
    init(type: String, typeSuffixText: String?) {
        self.type = type
        self.typeSuffixText = typeSuffixText
        super.init()
    }
    
    func isInclude(className: String) -> Bool {
        return self.type.elementsEqual(className)
    }
}
