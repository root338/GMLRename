//
//  GMLClassDefineType.swift
//  GMLRenameFile
//
//  Created by GML on 2018/12/31.
//  Copyright © 2018 GML. All rights reserved.
//

import Foundation



struct GMLOCPropertyType : OptionSet {
    var rawValue: Int
    init(rawValue: Int) {
        self.rawValue = rawValue
    }
    static let nullable = GMLOCPropertyType.init(rawValue: 1 << 0)
    static let nonatomic = GMLOCPropertyType.init(rawValue: 1 << 1)
    static let assgin = GMLOCPropertyType.init(rawValue: 1 << 2)
    static let strong = GMLOCPropertyType.init(rawValue: 1 << 3)
    static let copy = GMLOCPropertyType.init(rawValue: 1 << 4)
    static let weak = GMLOCPropertyType.init(rawValue: 1 << 5)
    static let readonly = GMLOCPropertyType.init(rawValue: 1 << 6)
    static let readwrite = GMLOCPropertyType.init(rawValue: 1 << 7)
}
