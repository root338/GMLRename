//
//  GMLPropertyProtocol.swift
//  GMLRenameFile
//
//  Created by apple on 2019/1/3.
//  Copyright © 2019 GML. All rights reserved.
//

import Cocoa

protocol GMLPropertyProtocol: NSObjectProtocol {
    var memberName: GMLParameterProtocol {get}
    var text : String {get}
}
