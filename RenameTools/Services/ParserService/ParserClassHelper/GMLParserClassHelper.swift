//
//  GMLParserClassHelper.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

static let GMLInterface = "@interface"
static let GMLImplementation = "@implementation"

class GMLParserClassHelper: NSObject {
    
//    let regularExpression : NSRegularExpression = {
//
//        let pattern = "@interface"
//        let regularExpression = NSRegularExpression.init(pattern: <#T##String#>, options: <#T##NSRegularExpression.Options#>)
//
//    }()
    
    func isExistsClass(content: String) ->Bool {
        let range = (content as NSString).range(of: GMLInterface)
        return range.location != NSNotFound ? true : false
    }
}
