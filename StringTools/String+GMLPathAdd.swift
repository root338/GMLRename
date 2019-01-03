//
//  String+GMLPathAdd.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

extension String {
    
    var gml_lastPathComponent : String {
        return (self as NSString).lastPathComponent
    }
    
    var gml_deletingLastPathComponent : String {
        return (self as NSString).deletingLastPathComponent
    }
    
    var gml_pathExtension : String {
        return (self as NSString).pathExtension
    }
    
    var gml_deletingPathExtension : String {
        return (self as NSString).deletingPathExtension
    }
    
    var gml_lastPathName : String {
        return gml_lastPathComponent.gml_deletingPathExtension
    }
}
